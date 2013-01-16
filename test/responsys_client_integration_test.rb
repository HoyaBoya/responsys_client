require 'test_helper'
require 'responsys_client'

class ResponsysClientIntegrationTest < Test::Unit::TestCase 
  FOLDER_NAME = "Test_Gem"
  CAMPAIGN_NAME = "GemCampaignEmail"
  CAMPAIGN_TRANSACTION_NAME = "GemTransactionalEmail"
  LIST_NAME = "GemList"

  EMAIL = "gem.test@responsys.client.gem.com"
  CONFIG_FILE_PATH = "test/config.yml"

  def setup
    raise "Missing test/config.yml.  See test/config.yml.sample" unless File.exist?(CONFIG_FILE_PATH)
    config = YAML.load_file(CONFIG_FILE_PATH)
    @username = config["username"]
    @password = config["password"]
    @file_handle = File.open('/tmp/wiredump', 'w')
    @client = SunDawg::Responsys::ResponsysClient.new(@username, @password, :wiredump_dev => @file_handle)
    SunDawg::Responsys::Member.clear_fields!
  end

  def teardown
    @file_handle.close()
  end

  class << self
    def with_integration
      return unless INTEGRATION
      yield
    end
  end

  def test_client
    assert @client
  end

  with_integration do
    def test_invalid_login
      error = assert_raise SunDawg::Responsys::AccountFault do
        SunDawg::Responsys::ResponsysClient.new("foo", "bar").login
      end
      assert_equal SunDawg::Responsys::ExceptionCode::INVALID_USER_NAME, error.exception_code
    end

    def test_login
      assert_nothing_raised do
        @client.login
        assert @client.session_id
      end
    end

    def test_list_folders
      results = @client.list_folders
      assert results.size
      results.each do |result|
        assert result.name
      end
    end

    def test_create_folder
      folder_name = "test_folder_#{Time.now.to_i}"
      @client.keep_alive = true
      response = @client.create_folder folder_name
      assert response.result
      results = @client.list_folders
      assert results.map { |i| i.name }.include? folder_name
    end

    # This assumes you have a supplemental table called gem_jpj in the Test_Gem list with this schema:
    # JPJ_1 Text Field (Primary Key)
    # JPJ_2 Text Field
    def test_save_supplemental_table_with_pk
      rando = rand(100)
      member = {
        'JPJ_1' => "I am a donkey",
        'JPJ_2' => "But I love you #{rando}"
      }
      response = @client.save_supplemental_table_with_pk(FOLDER_NAME, 'gem_jpj', [member])
      result = response.result
      assert_equal 1, result.totalCount
      assert_equal '', result.errorMessage
    end
    
    # This assumes you have a Porfile Extensions Table called gem_fire in the Test_Gem folder.
    # This also assumes that RIID_ is the match column for Test_Gem. The value for RIID_ should 
    # be incordance to that of in the corresponding Profile List for Test_Gem. 
    # JPJ_1 Text Field
    # JPJ_2 Text Field
    def test_save_profile_extension_table
      member = { 
        'JPJ_2' => "James Bond",
        'JPJ_1' => "007",
        'RIID_' => "511793"
      }   
      response = @client.save_profile_extension_table(FOLDER_NAME, 'gem_fire', [member], 'RIID' ) 
      result = response.recipientResult
      response.each{ |res| assert_equal '', res.errorMessage } 
    end 

    def test_save_members
      SunDawg::Responsys::Member.add_field :customer_id, true
      SunDawg::Responsys::Member.add_field :email_address, true
      SunDawg::Responsys::Member.add_field :email_permission_status, true
      SunDawg::Responsys::Member.add_field :city, true
      SunDawg::Responsys::Member.add_field :state, true
      member = SunDawg::Responsys::Member.new
      member.customer_id = Time.now.to_i 
      member.email_address = "sundawg.#{Time.now.to_i}@sundawg.net"
      member.email_permission_status = "I"
      member.city = "San Francisco"
      member.state = "CA"
      response = @client.save_members FOLDER_NAME, LIST_NAME, [member] 
      assert response.result
    end

    def test_save_members_with_attributes
      SunDawg::Responsys::Member.add_field :customer_id, true
      SunDawg::Responsys::Member.add_field :email_address, true
      SunDawg::Responsys::Member.add_field :email_permission_status, true
      SunDawg::Responsys::Member.add_field :city, true
      SunDawg::Responsys::Member.add_field :state, true
      member = SunDawg::Responsys::Member.new
      member.customer_id = Time.now.to_i 
      member.email_address = "lol.cats.sundawg.#{Time.now.to_i}@sundawg.net"
      member.email_permission_status = SunDawg::Responsys::PermissionStatus::OPTIN
      member.city = "San Francisco"
      member.state = "CA"
      member.expects(:state).never
      response = @client.save_members FOLDER_NAME, LIST_NAME, [member], [:customer_id, :email_address, :city]
      assert response.result
    end


    def test_keep_session
      SunDawg::Responsys::Member.add_field :customer_id, true
      SunDawg::Responsys::Member.add_field :email_address, true
      SunDawg::Responsys::Member.add_field :email_permission_status, true
      SunDawg::Responsys::Member.add_field :city, true
      SunDawg::Responsys::Member.add_field :state, true

      member = SunDawg::Responsys::Member.new
      member.customer_id = Time.now.to_i 
      member.email_address = "sundawg-montgomery@sundawg.net"
      member.email_permission_status = SunDawg::Responsys::PermissionStatus::OPTIN
      member.city = "Montgomery"
      member.state = "AL"

      # When the keep_alive option has not been set (default) then the client 
      # must reconnect for every request or a FaultError will be raised on 
      # multiple requests
      response = @client.save_members FOLDER_NAME, LIST_NAME, [member] 
      assert response.result
      error = assert_raise SOAP::FaultError do
        @client.save_members FOLDER_NAME, LIST_NAME, [member] 
      end

      # When the keep_alive option has been set then the client does not need
      # to reconnect for every request
      @client = SunDawg::Responsys::ResponsysClient.new(@username, @password, :keep_alive => true)
      response = @client.save_members FOLDER_NAME, LIST_NAME, [member] 
      assert response.result
      response = @client.save_members FOLDER_NAME, LIST_NAME, [member] 
      assert response.result

      # When the keep_alive option has not been set (default) then the client 
      # does not need to reconnect for every request if keep_alive is set
      @client = SunDawg::Responsys::ResponsysClient.new(@username, @password)
      @client.keep_alive = true
      response = @client.save_members FOLDER_NAME, LIST_NAME, [member] 
      assert response.result
      response = @client.save_members FOLDER_NAME, LIST_NAME, [member] 
      assert response.result
    end

    def test_launch_campaign
      begin
        response = @client.launch_campaign FOLDER_NAME, CAMPAIGN_NAME
        assert response.result 
      rescue SunDawg::Responsys::CampaignFault => e
        # Responsys does not allow campaigns to be launched less than 15 minute attempts
        assert_equal "Launch attempt failed: A campaign cannot be launched more than once per 15 minutes.", e.exception_message
      end
    end

    def test_trigger_campaign_with_optional_data
      response = @client.trigger_campaign(
        FOLDER_NAME, 
        CAMPAIGN_TRANSACTION_NAME, 
        EMAIL,
        {:name => "Fred"}
      )
      assert response.first.success
    end

    def test_trigger_campaign_without_optional_data
      response = @client.trigger_campaign(
        FOLDER_NAME,
        CAMPAIGN_TRANSACTION_NAME,
        EMAIL
      )
      assert response.first.success
    end
  end
end

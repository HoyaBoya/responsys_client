require 'test_helper'
require 'responsys_client'

class ResponsysClientIntegrationTest < Test::Unit::TestCase 
  FOLDER_NAME = "GemTest"
  CAMPAIGN_NAME = "GemCampaignEmail"
  CAMPAIGN_TRANSACTION_NAME = "GemTransactionalEmail"
  LIST_NAME = "GemList"
  EMAIL = "gem.test@responsys.client.gem.com"

  def setup
    config = YAML.load_file("test/config.yml")
    @username = config["username"]
    @password = config["password"]
    @client = SunDawg::ResponsysClient.new(@username, @password)
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
      error = assert_raise AccountFault do
        SunDawg::ResponsysClient.new("foo", "bar").login
      end
      assert_equal ExceptionCode::INVALID_USER_NAME, error.exception_code
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

    def test_save_users
      SunDawg::Responsys::User.add_field :email_address
      SunDawg::Responsys::User.add_field :city
      SunDawg::Responsys::User.add_field :state
      user = SunDawg::Responsys::User.new
      user.email_address = "sundawg.#{Time.now.to_i}@sundawg.net"
      user.city = "San Francisco"
      user.state = "CA"
      response = @client.save_users FOLDER_NAME, LIST_NAME, [user] 
      assert response.result
    end

    def test_launch_campaign
      begin
        response = @client.launch_campaign FOLDER_NAME, CAMPAIGN_NAME
        assert response.result 
      rescue CampaignFault => e
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

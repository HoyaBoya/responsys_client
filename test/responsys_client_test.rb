require 'test_helper'
require 'responsys_client'

class ResponsysClientTest < Test::Unit::TestCase 
  def setup
    config = YAML.load_file("test/config.yml")
    @username = config["username"]
    @password = config["password"]
    #@client = SunDawg::ResponsysClient.new(@username, @password, :wiredump_dev => STDOUT)
    @client = SunDawg::ResponsysClient.new(@username, @password)
  end

  def test_client_instantiation
    assert @client
  end

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
    create_folder_response = @client.create_folder folder_name
    assert create_folder_response.result
    results = @client.list_folders
    assert results.map { |i| i.name }.include? folder_name
  end
end

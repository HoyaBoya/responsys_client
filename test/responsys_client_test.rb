require 'test_helper'
require 'responsys_client'

class ResponsysClientTest < Test::Unit::TestCase 
  def setup
    config = YAML.load_file("test/config.yml")
    @username = config["username"]
    @password = config["password"]
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
    assert @client.list_folders.size > 0
  end
end

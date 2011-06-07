require 'test_helper'
require 'responsys_client'

class ResponsysClientTest < Test::Unit::TestCase 
  def setup
     SunDawg::Responsys::Member.clear_fields!
  end

  def test_instantiation
    assert SunDawg::ResponsysClient.new("foo", "bar")
  end

  def test_instantiation_with_options
    assert SunDawg::ResponsysClient.new("foo", "bar", :wiredump_dev => STDOUT)
  end

  def test_save_members_throws_too_many_members_error 
    SunDawg::Responsys::Member.add_field :customer_id
    SunDawg::Responsys::Member.add_field :email_address
    SunDawg::Responsys::Member.add_field :email_permission_status
    members = []
    (SunDawg::ResponsysClient::MAX_MEMBERS + 1).times do 
      members << SunDawg::Responsys::Member.new 
    end
    assert_raises SunDawg::ResponsysClient::TooManyMembersError do
      SunDawg::ResponsysClient.new("foo", "bar").save_members("folder", "list", members)
    end
  end

  def test_save_members_throws_methods_not_supported_error_with_no_email_address
    SunDawg::Responsys::Member.add_field :email_address
    member = SunDawg::Responsys::Member.new
    assert_raises SunDawg::ResponsysClient::MethodsNotSupportedError do
      SunDawg::ResponsysClient.new("foo", "bar").save_members("folder", "list", [member])
    end
  end

  def test_save_members_throws_methods_not_supported_error_with_no_email_permission_status
    SunDawg::Responsys::Member.add_field :email_permission_status
    member = SunDawg::Responsys::Member.new
    assert_raises SunDawg::ResponsysClient::MethodsNotSupportedError do
      SunDawg::ResponsysClient.new("foo", "bar").save_members("folder", "list", [member])
    end
  end

end

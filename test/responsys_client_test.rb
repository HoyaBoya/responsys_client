require 'test_helper'
require 'responsys_client'

class ResponsysClientTest < Test::Unit::TestCase 
  def setup
     SunDawg::Responsys::Member.clear_fields!
  end

  def test_instantiation
    assert SunDawg::Responsys::ResponsysClient.new("foo", "bar")
  end

  def test_instantiation_with_options
    assert SunDawg::Responsys::ResponsysClient.new("foo", "bar", :wiredump_dev => STDOUT)
  end

  def test_save_members_throws_too_many_members_error 
    SunDawg::Responsys::Member.add_field :customer_id
    SunDawg::Responsys::Member.add_field :email_address
    SunDawg::Responsys::Member.add_field :email_permission_status
    members = []
    (SunDawg::Responsys::ResponsysClient::MAX_MEMBERS + 1).times do 
      members << SunDawg::Responsys::Member.new 
    end
    assert_raises SunDawg::Responsys::ResponsysClient::TooManyMembersError do
      SunDawg::Responsys::ResponsysClient.new("foo", "bar").save_members("folder", "list", members)
    end
  end

  def test_save_members_throws_methods_not_supported_error_with_no_email_address
    SunDawg::Responsys::Member.add_field :email_address
    member = SunDawg::Responsys::Member.new
    assert_raises SunDawg::Responsys::ResponsysClient::MethodsNotSupportedError do
      SunDawg::Responsys::ResponsysClient.new("foo", "bar").save_members("folder", "list", [member])
    end
  end

  def test_save_members_throws_methods_not_supported_error_with_no_email_permission_status
    SunDawg::Responsys::Member.add_field :email_permission_status
    member = SunDawg::Responsys::Member.new
    assert_raises SunDawg::Responsys::ResponsysClient::MethodsNotSupportedError do
      SunDawg::Responsys::ResponsysClient.new("foo", "bar").save_members("folder", "list", [member])
    end
  end

  def test_save_members_removes_illegal_xml_characters
    SunDawg::Responsys::Member.add_field :customer_id
    SunDawg::Responsys::Member.add_field :email_address
    SunDawg::Responsys::Member.add_field :email_permission_status
    SunDawg::Responsys::Member.add_field :user_text

    member = SunDawg::Responsys::Member.new
    member.user_text = "Text with a vertical \v tab"

    ws = stub(:login => stub(:result => stub(:sessionId => 'session ID')),
              :logout => true,
              :headerhandler => stub(:add))
    ResponsysWS.stubs(:new).returns(ws)

    ws.expects(:mergeListMembers).with do |mlm|
      mlm.recordData.records[0].none? {|r| r.to_s =~ /[[:cntrl:]]/}
    end

    SunDawg::Responsys::ResponsysClient.new('foo','bar').save_members('folder', 'list', [member])
  end

  def test_trigger_campaign_removes_illegal_xml_characters
    ws = stub(:login => stub(:result => stub(:sessionId => 'session ID')),
              :logout => true,
              :headerhandler => stub(:add))
    ResponsysWS.stubs(:new).returns(ws)

    ws.expects(:triggerCampaignMessage).with do |tcm|
      tcm.recipientData.optionalData.none? {|od| od.value =~ /[[:cntrl:]]/}
    end

    SunDawg::Responsys::ResponsysClient.new('foo','bar').trigger_user_campaign('campaign', {:id => 5}, { 'DataField' => "vertical\vtab" })
  end
  
end

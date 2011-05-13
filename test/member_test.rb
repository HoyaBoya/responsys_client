require 'test_helper'
require 'member'

class MemberTest < Test::Unit::TestCase 
  
  def setup
     SunDawg::Responsys::Member.clear_fields!
  end

  def test_parse_feedback_csv
    SunDawg::Responsys::Member.add_field :customer_id, true
    SunDawg::Responsys::Member.add_field :email_address, true
    results = SunDawg::Responsys::Member.parse_feedback_csv("#{File.dirname(__FILE__)}/feedback.csv")
    assert_equal 3, results.size
    results.values.each do |reason|
      assert_equal "INVALID FORMAT FOR EMAIL ADDRESS", reason
    end
    results.keys.each do |member|
      assert member.instance_of?(SunDawg::Responsys::Member)
      assert member.customer_id
      assert member.email_address
    end
  end

  def test_attribute_methods
    SunDawg::Responsys::Member.add_field :foo
    member = SunDawg::Responsys::Member.new
    member.foo = "bar"
    assert_equal "bar", member.foo
    assert_equal "bar", member.FOO
  end

  def test_fields
    SunDawg::Responsys::Member.add_field :foo
    SunDawg::Responsys::Member.add_field :bar
    assert_equal [:foo, :bar], SunDawg::Responsys::Member.fields
  end

  def test_responsys_fields
    SunDawg::Responsys::Member.add_field :foo
    SunDawg::Responsys::Member.add_field :bar
    assert_equal ["FOO", "BAR"], SunDawg::Responsys::Member.responsys_fields
  end

  def test_from_responsys_field
    assert_equal "foo", SunDawg::Responsys::Member.send(:from_responsys_field, "FOO")
    assert_equal "foo_bar", SunDawg::Responsys::Member.send(:from_responsys_field, "FOO_BAR")
    SunDawg::Responsys::Member.add_field :tweet, true
    assert_equal "tweet", SunDawg::Responsys::Member.send(:from_responsys_field, "TWEET_")
  end

  def test_responsys_system_fields
    SunDawg::Responsys::Member.add_field :foo, true
    SunDawg::Responsys::Member.add_field :bar, true
    SunDawg::Responsys::Member.add_field :woot
    assert_equal ["FOO_", "BAR_", "WOOT"], SunDawg::Responsys::Member.responsys_fields
    member = SunDawg::Responsys::Member.new
    member.foo = "value_1"
    member.bar = "value_2"
    member.woot = 123 
    assert_equal ["value_1", "value_2", 123], member.values
  end

  def test_values
    SunDawg::Responsys::Member.add_field :foo
    SunDawg::Responsys::Member.add_field :bar
    SunDawg::Responsys::Member.add_field :nernt
    member = SunDawg::Responsys::Member.new
    member.foo = "value_1"
    member.bar = "value_2"
    member.nernt = 123 
    assert_equal ["value_1", "value_2", 123], member.values
  end

  def test_attributes
    SunDawg::Responsys::Member.add_field :foo
    SunDawg::Responsys::Member.add_field :bar
    member = SunDawg::Responsys::Member.new
    member.attributes = {:foo => "value_1", :bar => "value_2"}
    assert_equal "value_1", member.foo
    assert_equal "value_2", member.bar
  end

  def test_to_csv_splitted_files
    SunDawg::Responsys::Member.add_field :customer_id
    SunDawg::Responsys::Member.add_field :foo
    SunDawg::Responsys::Member.add_field :bar
    SunDawg::Responsys::Member.profile_fields = [:foo]
    member = SunDawg::Responsys::Member.new
    member.attributes = {:foo => "value_1", :bar => "value_2", :customer_id => 123}
    SunDawg::Responsys::Member.expects(:build_csv_file).twice
    SunDawg::Responsys::Member.to_csv_splitted_file([member], "user.csv", "data.csv", true)
  end

  def test_profile_fields
    SunDawg::Responsys::Member.profile_fields = [:foo]
    assert_equal [:foo], SunDawg::Responsys::Member.profile_fields
  end
end

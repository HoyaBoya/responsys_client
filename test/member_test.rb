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

  def test_parse_import_file
    SunDawg::Responsys::Member.add_field :customer_id, true
    SunDawg::Responsys::Member.add_field :email, true
    results = SunDawg::Responsys::Member.import_file("#{File.dirname(__FILE__)}/import.txt")
    assert_equal 3, results.size
    results.each do |member|
      assert member.instance_of?(SunDawg::Responsys::Member)
    end
    [["855006", "leigh.walters@united.com"],
     ["886389", "gcandido@cox.net"],
     ["3052672", "deleteduser@delete.animoto.com"]].each do |expected|
      actual = results.shift
      assert_equal expected[0], actual.customer_id
      assert_equal expected[1], actual.email
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
    SunDawg::Responsys::Member.add_field :hello, true
    # Fields should be unique and defined the first time
    SunDawg::Responsys::Member.add_field :bar
    SunDawg::Responsys::Member.add_field :hello
    assert_equal [:foo, :bar, :hello], SunDawg::Responsys::Member.fields
    assert_equal ["FOO", "BAR", "HELLO_"], SunDawg::Responsys::Member.responsys_fields
  end

  def test_has_field
    SunDawg::Responsys::Member.add_field :foo
    SunDawg::Responsys::Member.add_field :bar
    assert SunDawg::Responsys::Member.has_field? :foo
    assert SunDawg::Responsys::Member.has_field? :bar
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
    SunDawg::Responsys::Member.extension_fields = {:file_a => [:foo], :file_b => [:bar]}
    member = SunDawg::Responsys::Member.new
    member.attributes = {:foo => "value_1", :bar => "value_2", :customer_id => 123}
    SunDawg::Responsys::Member.expects(:build_csv_file).times(3)
    SunDawg::Responsys::Member.to_csv_extension_files([member], "/tmp", :headers => true, :access => "w")
  end

  def test_member_fields
    SunDawg::Responsys::Member.add_field :customer_id
    SunDawg::Responsys::Member.add_field :foo
    SunDawg::Responsys::Member.add_field :bar
    SunDawg::Responsys::Member.add_field :chooch
    SunDawg::Responsys::Member.add_field :nooch
    SunDawg::Responsys::Member.extension_fields = {:file_a => [:foo], :file_b => [:bar]}
    assert_equal [:customer_id, :chooch, :nooch], SunDawg::Responsys::Member.member_fields
  end

  def test_profile_fields
    SunDawg::Responsys::Member.extension_fields = {
      :file_a => [:foo],
      :file_b => [:bar]
    }
    [:file_a, :file_b].each do |i|
      SunDawg::Responsys::Member.extension_fields.keys.include?(i)
    end
  end
end

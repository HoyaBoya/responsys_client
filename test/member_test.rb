require 'test_helper'
require 'member'

class MemberTest < Test::Unit::TestCase 
  
  def setup
     SunDawg::Responsys::Member.clear_fields!
  end

  def test_attribute_methods
    SunDawg::Responsys::Member.add_field :foo
    member = SunDawg::Responsys::Member.new
    member.foo = "bar"
    assert_equal "bar", member.foo
    assert_equal "bar", member.FOO_
  end

  def test_fields
    SunDawg::Responsys::Member.add_field :foo
    SunDawg::Responsys::Member.add_field :bar
    assert_equal [:foo, :bar], SunDawg::Responsys::Member.fields
  end

  def test_responsys_fields
    SunDawg::Responsys::Member.add_field :foo
    SunDawg::Responsys::Member.add_field :bar
    assert_equal ["FOO_", "BAR_"], SunDawg::Responsys::Member.responsys_fields
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
end

require 'test_helper'
require 'user'

class UserTest < Test::Unit::TestCase 
  
  def setup
     SunDawg::Responsys::User.clear_fields!
  end

  def test_attribute_methods
    SunDawg::Responsys::User.add_field :foo
    user = SunDawg::Responsys::User.new
    user.foo = "bar"
    assert_equal "bar", user.foo
    assert_equal "bar", user.FOO_
  end

  def test_responsys_fields
    SunDawg::Responsys::User.add_field :foo
    SunDawg::Responsys::User.add_field :bar
    assert_equal ["FOO_", "BAR_"], SunDawg::Responsys::User.responsys_fields
  end

  def test_values
    SunDawg::Responsys::User.add_field :foo
    SunDawg::Responsys::User.add_field :bar
    SunDawg::Responsys::User.add_field :nernt
    user = SunDawg::Responsys::User.new
    user.foo = "value_1"
    user.bar = "value_2"
    user.nernt = 123 
    assert_equal ["value_1", "value_2", 123], user.values
  end
end

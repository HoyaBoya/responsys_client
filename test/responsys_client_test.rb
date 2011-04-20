require 'test_helper'
require 'responsys_client'

class ResponsysClientTest < Test::Unit::TestCase 
  def test_instantiation
    assert SunDawg::ResponsysClient.new("foo", "bar")
  end

  def test_instantiation_with_options
    assert SunDawg::ResponsysClient.new("foo", "bar", :wiredump_dev => STDOUT)
  end

end

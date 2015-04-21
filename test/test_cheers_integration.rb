require 'rubygems'
require 'bundler/setup'
require 'minitest/autorun'

class TestCheersIntegration < MiniTest::Test

  def test_that_the_tests_run
    assert_equal true, false
  end

  def test_that_two_plus_two_equals_four
    assert_equal 2+2, 4
  end

end
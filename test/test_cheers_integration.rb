require 'rubygems'
require 'bundler/setup'
require 'minitest/autorun'

class TestCheersIntegration < MiniTest::Test

  def test_running_file_without_input
    output = `./cheers`
    expected = <<END
I'd cheer for you, if only I knew who you were :(
Try again, but this time type './cheers [Name] [MM/DD Birthday]'
END
assert_equal output, expected
  end
end
require_relative 'helper'

class TestCheersIntegration < MiniTest::Test

  def test_running_file_without_input
    output = `./cheers`
    expected = <<END
I'd cheer for you, if only I knew who you were :(
Try again, but this time type './cheers [Name] [MM/DD Birthday]'
END
assert_equal expected, output
  end

  def test_one_valid_arg_name
    output =  `./cheers Jake`
    expected = <<END
Give me a... J!
Give me an... A!
Give me a... K!
Give me an... E!

Jake's just GRAND!
END
    assert_equal expected, output
  end

  def test_one_valid_arg_name_with_hyphens
    output =  `./cheers Jake-Sue`
    expected = <<END
Give me a... J!
Give me an... A!
Give me a... K!
Give me an... E!
Give me an... S!
Give me a... U!
Give me an... E!

Jake-Sue's just GRAND!
END
    assert_equal expected, output
  end

  def test_one_invalid_arg_empty_string_for_name
    output =  `./cheers ""`
    expected = <<END
I'd cheer for you, if only I knew who you were :(
Try again, but this time type './cheers [Name] [MM/DD Birthday]'
END
    assert_equal expected, output
  end

  def test_one_invalid_arg_whitespace_for_name
    output =  `./cheers "    "`
    expected = <<END
I'd cheer for you, if only I knew who you were :(
Try again, but this time type './cheers [Name] [MM/DD Birthday]'
END
    assert_equal expected, output
  end

  def test_one_valid_arg_birthdate
    output =  `./cheers 04/22`
    expected = <<END
I'd cheer for you, if only I knew who you were :(
Try again, but this time type './cheers [Name] [MM/DD Birthday]'
END
    assert_equal expected, output
  end

  def test_one_invalid_arg
    output = `./cheers 3$%%**%$~`
    expected = <<END
I'd cheer for you, if only I knew who you were :(
Try again, but this time type './cheers [Name] [MM/DD Birthday]'
END
    assert_equal expected, output
  end


  def test_two_valid_args_projected_birthday
    output = `./cheers Abby 08/25`
    expected = <<EOS
Give me an... A!
Give me a... B!
Give me a... B!
Give me a... Y!

Abby's just GRAND!

Awesome! Your birthday is in 125 days! Happy Birthday in advance!
EOS
    assert_equal expected, output
  end

  def test_two_valid_args_backdated_birthday
    output = `./cheers Abby 08/25`
    expected = <<EOS
Give me an... A!
Give me a... B!
Give me a... B!
Give me a... Y!

Abby's just GRAND!

Awesome! Your birthday is in 125 days! Happy Birthday in advance!
EOS
    assert_equal expected, output
  end

  def test_two_valid_args_no_leading_zero_birthdate
    output = `./cheers Abby 8/25`
    expected = <<EOS
Give me an... A!
Give me a... B!
Give me a... B!
Give me a... Y!

Abby's just GRAND!

Awesome! Your birthday is in 125 days! Happy Birthday in advance!
EOS
    assert_equal expected, output
  end

  def test_two_args_valid_and_invalid
    output = `./cheers Jake xx/xx`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(
Try again, but this time type './cheers [Name] [MM/DD Birthday]'
EOS
    assert_equal expected, output
  end

  def test_two_args_invalid_and_valid
    output = `./cheers Jer3m1 03/11`
    expected = <<END
I'd cheer for you, if only I knew who you were :(
Try again, but this time type './cheers [Name] [MM/DD Birthday]'
END
    assert_equal expected, output
  end

  def test_two_args_invalid_and_invalid
    output = `./cheers Jer3m*1 zz/zz`
    expected = <<END
I'd cheer for you, if only I knew who you were :(
Try again, but this time type './cheers [Name] [MM/DD Birthday]'
END
    assert_equal expected, output
  end

  def test_two_args_valid_and_invalid_month_value
    output = `./cheers Donna 50/22`
    expected = <<END
I'd cheer for you, if only I knew who you were :(
Try again, but this time type './cheers [Name] [MM/DD Birthday]'
END
    assert_equal expected, output
  end

  def test_two_args_valid_and_invalid_days_value
    output = `./cheers Donna 04/55`
    expected = <<END
I'd cheer for you, if only I knew who you were :(
Try again, but this time type './cheers [Name] [MM/DD Birthday]'
END
    assert_equal expected, output
  end

  def test_two_args_valid_and_invalid_year_value_included
    output = `./cheers Donna 04/22/15`
    expected = <<END
I'd cheer for you, if only I knew who you were :(
Try again, but this time type './cheers [Name] [MM/DD Birthday]'
END
    assert_equal expected, output
  end

  def test_valid_transposed_arguments
    output = `./cheers 08/22 Donna`
    expected = <<END
I'd cheer for you, if only I knew who you were :(
Try again, but this time type './cheers [Name] [MM/DD Birthday]'
END
    assert_equal expected, output
  end

end
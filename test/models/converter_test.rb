require 'test_helper'

class ConverterTest < ActiveSupport::TestCase
  test 'it should resolve the converter klass' do
    assert_nothing_raised {Converter}
  end

  test 'it should convert 1 to one' do
    assert_equal "one", Converter.int_to_string(1)
  end

  test 'it should convert 3 to three' do
    assert_equal "three", Converter.int_to_string(3)
  end

  test 'it should convert 325 to three twenty five' do
    assert_equal "three hundred twenty five", Converter.int_to_string(325)
  end

  test 'it should convert 99 to ninty nine' do
    assert_equal "ninety nine", Converter.int_to_string(99)
  end

  test 'it should convert 19 to nineteen' do
    assert_equal "nineteen", Converter.int_to_string(19)
  end

  test 'it should convert 11 to eleven' do
    assert_equal "eleven", Converter.int_to_string(11)
  end

  test 'it should convert 999 to nine hundred ninty nine' do
    assert_equal "nine hundred ninety nine", Converter.int_to_string(999)
  end
end
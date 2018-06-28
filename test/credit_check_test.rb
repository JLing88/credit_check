require "minitest/autorun"
require "minitest/pride"
require "./lib/credit_check.rb"

class CreditCheckTest < Minitest::Test
  def test_it_exists
    credit_check = CreditCheck.new
    assert_instance_of CreditCheck, credit_check
  end

  def test_integer_to_array_and_reverse
    credit_check = CreditCheck.new
    assert_equal [0, 4, 2, 5, 9, 7, 3, 2, 9, 1, 0, 8, 1, 4, 5, 5],
      credit_check.integer_to_array_and_reverse(5541801923795240)
  end

  def test_double_odd_indexes
    credit_check = CreditCheck.new
    assert_equal [1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2],
      credit_check.double_odd_indexes([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1])
  end

  def test_sum_digits_over_nine
    tester = CreditCheck.new
    array = [2, 10, 16, 4, 18, 6]
    assert_equal tester.sum_digits_over_nine(array), [2, 1, 7, 4, 9, 6]

  end

  def test_sum_array_elements
    tester = CreditCheck.new
    array = [1, 2, 3, 4]
    assert_equal tester.sum_array_elements(array), 10
  end

  def test_divisible_by_ten
    tester = CreditCheck.new
    refute tester.divisible_by_ten(95)
    refute tester.divisible_by_ten(83)
    assert tester.divisible_by_ten(100)
  end

  def test_luhn_algorithm
    valid_tester = CreditCheck.new
    invalid_tester = CreditCheck.new
    assert valid_tester.luhn_algorithm(5541808923795240)
    refute invalid_tester.luhn_algorithm(5541801923795240)
  end
end

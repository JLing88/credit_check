
class CreditCheck

  def initialize
    @card_number
  end

  def integer_to_array_and_reverse(card_number)
    return integer_array = card_number.digits
  end

  def double_odd_indexes(array)
    array.each_with_index do |item, index|
      if index.odd?
        array[index] = item * 2
      end
    end
  end

  def sum_digits_over_nine(array)
    array.each_with_index do |item, index|
      if item > 9
        array[index] = item - 9
      end
    end
    return array
  end

  def sum_array_elements(array)
    total = 0
    array.each do |item|
      total += item
    end
    return total
  end

  def divisible_by_ten(total)
    if total % 10 == 0
      return true
    else
      return false
    end
  end

  def luhn_algorithm?(card_number)
    card_number_array = integer_to_array_and_reverse(card_number)
    card_number_array = double_odd_indexes(card_number_array)
    card_number_array = sum_digits_over_nine(card_number_array)
    total = sum_array_elements(card_number_array)
    return divisible_by_ten(total)
  end

  def valid_number?(card_number)
    if luhn_algorithm
      return true
    else
      return false
    end
  end

  def validation_output(card_number)
    if valid_number?(card_number)
      puts "The number is valid!"
    else
      puts "The number is invalid!"
    end
  end

  def get_check_digit(card_number)
    card_number_array = integer_to_array_and_reverse(card_number)
    card_number_array = double_odd_indexes(card_number_array)
    card_number_array = sum_digits_over_nine(card_number_array)
    total = sum_array_elements(card_number_array)
    unit_array = total.digits
    check_digit = unit_array[0]
    return check_digit

  end

end

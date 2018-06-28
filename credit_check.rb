
class CreditCheck

  def initialize
    @card_number
  end

  def integer_to_array(card_number)
    return integer_array = card_number.digits
  end

  def double_odd_indexes(array)
    array.each_with_index do |item, index|
      if index.odd?
        array[index] = item * 2
      end
    end
  end

  def sum_digits_over_ten(array)
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
      total = total + item
    end
    return total
    puts total
  end

  def divisible_by_ten(total)
    if total % 10 == 0
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

  def valid_number?(card_number)
    integer_array = integer_to_array(card_number)
    integer_array = double_odd_indexes(integer_array)
    integer_array = sum_digits_over_ten(integer_array)
    total = sum_array_elements(integer_array)
    return divisible_by_ten(total)
  end
end

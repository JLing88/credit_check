card_number = "5541808923795240"

def char_to_int(array)
  array.map { |item| item.to_i  }
end

def double_even_indexes(number_array)
  number_array.each_with_index do |item, index|
    if index.even?
      number_array[index] = item * 2
    end
  end
end

def sum_digits_over_ten(number_array)
  number_array.each_with_index do |item, index|
    if item > 9
      number_array[index] = (item - 10) + 1
    end
  end
end

def sum_array(array)
  total = 0

  array.each do |item|
    total = total + item
  end
  return total
end

def is_valid(total)
  if total % == 0
    return true
  end
end

char_array = card_number.chars
int_array = char_to_int(char_array)


if is_valid(total)
  puts "The number is valid!"
else
  puts "The number is invalid"
end

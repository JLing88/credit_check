card_number = "4024007136512380"

#changes char array to int array
def char_to_int(array)
  array.map { |item| item.to_i  }
end

#doubles even number indexes in a number array
def double_even_indexes(number_array)
  number_array.each_with_index do |item, index|
    if index.even?
      number_array[index] = item * 2
    end
  end
end

#if digits in array are greater than 9, adds digits together
def sum_digits_over_ten(number_array)
  number_array.each_with_index do |item, index|
    if item > 9
      number_array[index] = (item - 10) + 1
    end
  end
end

#adds all array elements together, returns total
def sum_array_elements(array)
  total = 0
  array.each do |item|
    total = total + item
  end
  return total
end

def is_valid(total)
  if total % 10 == 0
    return true
  end
end

def print_valid(valid)
  if valid
    puts "The number is valid!"
  else
    puts "The number is invalid!"
  end
end

char_array = card_number.chars

card_number_array = char_to_int(char_array)

card_number_array = double_even_indexes(card_number_array)

card_number_array = sum_digits_over_ten(card_number_array)

total = sum_array_elements(card_number_array)

valid = is_valid(total)

print_valid(valid)

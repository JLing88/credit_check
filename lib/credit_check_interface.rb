require "./credit_check"

credit_check = CreditCheck.new
puts "Credit Card Number Validator"
puts "-----------------------------"
print "Enter a card number: "
credit_check.card_number = gets.chomp
credit_check.card_number = credit_check.string_to_integer_array_reversed(credit_check.card_number)

# Project Euler Problem 4

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.

# Identifying palindromes:

test_strings = ["20", "42425", "4004", "9009", "41234", "212", "9999", "1"]

def test_for_palindrome(number_array)
  number_array.each do |string|
    if string.to_s == string.to_s.reverse
      puts "#{string} is a palindrome."
    end
  end
end
  
numbers = (100..999).to_a.permutation(2).map{ |a,b| a*b }
numbers.sort!{ |a,b| a <=> b}
test_for_palindrome(numbers)

# for x in 10..99
#   for y in 10..99
#     printf "%d * %d = %d\n", x,y, x * y
#   end 
# end
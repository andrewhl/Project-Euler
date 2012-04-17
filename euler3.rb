# Project Euler Problem 3

# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143 ?

# dividend = 600851475143
# dividend = 8462696833
# dividend = 716151937
# # dividend = 408464633
# 
# factors = []
# 
# number = 1
# while number <= dividend
#   if dividend % number == 0
#     factors << number
#     puts number
#   end
#   number += 2
# end
#   
# # (1..600851475143).each do |number|
# #   if number % 2 == 0
# #   if dividend % number == 0
# #     factors << number
# #     puts number
# #   end
# # end
# puts "Factors: #{factors}"

# factors = ["1", "71", "839", "1471", "6857", "59569", "104441", "486847", "1234169", "5753023", "10086647", "87625999", "408464633", "716151937", "8462696833"]
# 
# parity = 1
# prime_factors = []
# new_factors = []
# factors.each do |factor|
#   while parity <= factor
#     if factor % parity == 0
#       new_factors << factor
#     end
#     if new_factors.length == 2
#       prime_factors << factor
#     end
#     parity += 2
#   end
# end
# puts "Prime Factors: #{prime_factors}"

  composite = 600851475143
  highest = composite
  factors = []
  
  n = 3
  div = 0
  loop do
    if composite % n == 0
      div = composite / n
      factors << n
      factors << div
      highest = div 
      puts n
      puts div
    end
    n += 2
    break if n > highest
  end
puts "Found factors"

factors.sort! { |a,b| b <=> a }
puts factors

composites = []

factors.each do |factor|
  factors.each do |subfactor|
    if subfactor != factor
      if factor % subfactor == 0
        composites << factor
      end
    end
  end
end

composites.each do |x|
  if factors.include?(x)
    factors.delete(x)
    puts "Remaining prime factors: #{factors}"
  end
end

# primefactors = []
# factors.each do |factor|
#   factors.each do subfactor
#   
#   
#   
#   loop do
#       puts "n=#{n}"
#       if factor % n == 0
#         div = factor / n
#         subfactors << n
#         subfactors << div
#         highest = div 
#         puts "sub factors: #{n}, #{div}"
#       end
#       n += 2
#       
#     break if n > highest
#   end
#   if factors == []
#       primefactors << factor  
#       puts "Prime Factors: #{primefactors}"
#   end
# end
# puts primefactors

      
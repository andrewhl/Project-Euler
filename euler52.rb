# It can be seen that the number, 125874, and its double, 251748, contain exactly the same digits, but in a different order.
# 
# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.
module Enumerable
  def dups
    inject({}) {|h,v| h[v]=h[v].to_i+1; h}.reject{|k,v| v==1}.keys
  end
end

test = [1,2,3,4,5,6,6,7]

test = 12345567
test2 = 76554321

numbers = [test, test2]
new_numbers = []

numbers.each do |num|
  
  num = num.to_s.split('').map { |x| x.to_i }.sort { |a,b| a <=> b }.join
  new_numbers << num
  
end

puts new_numbers.uniq

if new_numbers[0] == new_numbers[1]
  puts "True"
end

# n = 0
# 
# while n <= new_numbers.length
#   
# end


# puts test.to_s.split('').map { |x| x.to_i }.dups.inspect

# puts test.dups.inspect
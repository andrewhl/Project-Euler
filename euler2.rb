# Project Euler Problem 2

# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# 
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

# 0, 1, 2, 3, 5
x = 0
y = 1
z = 0
fibonacci = []
while z < 4000000 do
  z = x + y
  x = y
  y = z
  fibonacci << z
  puts "Fibonacci term: #{z}"
end

sum = 0
fibonacci.each do |number|
  if number % 2 == 0
    sum += number
  end
end
puts sum



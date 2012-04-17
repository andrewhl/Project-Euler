# n! means n × (n − 1) × ... × 3 × 2 × 1
# 
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
# 
# Find the sum of the digits in the number 100!

def factorial(number)
  
  product = number
  term = number
  
  while term > 1
    
    product = product * (term - 1)
    term -= 1
    
  end
  
  return product
  
end

number = factorial(100)

number = number.to_s.split('')

number.collect! { |x| x.to_i }
puts number.inject(:+)
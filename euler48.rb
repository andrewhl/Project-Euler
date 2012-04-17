# The series, 11 + 22 + 33 + ... + 1010 = 10405071317.
# 
# Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.

def exponential_sequence(limit)
  
  products = []
  
  n = 1
  
  while n <= limit
    
    term = n
    term = term ** term
    products << term
    n += 1
    
  end
  
  return products.inject(:+)[3,-1]
  
end

puts exponential_sequence(1000)
# We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is also prime.
# 
# What is the largest n-digit pandigital prime that exists?

def collect_primes(number)
  
  sieve = [nil, nil] + (2 .. number).to_a
  
  (2 .. Math.sqrt(number)).each do |n|
    next unless sieve[n]
    (n*n).step(number, n) do |num|
      sieve[num] = nil
    end
  end
  
  primes = []
  sieve.each do |x|
    if x != nil
      primes << x
    end
  end
  return primes
end

def collect_pandigital_primes(number)
  
  primes = collect_primes(Math.sqrt(number))
  
  num_array = number.to_s.split("").map { |x| x.to_i }
  num_array = num_array.permutation(number.to_s.length).to_a.map { |x| x.join.to_i }
  
  pandigital_primes = []
  
  num_array.each do |pandigital|

    count = 0
    
    primes.each do |prime|
      if pandigital % prime == 0
        count += 1
      end
    end
    
    if count == 0
      pandigital_primes << pandigital
    end
  end
  
  return pandigital_primes  
end

puts collect_pandigital_primes(7654321).max


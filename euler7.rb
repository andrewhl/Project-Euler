# Project Euler Problem 7
# 
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# 
# What is the 10 001st prime number?

# Prime sifter

def sieve_upto(top)
  sieve = []
  for i in 2 .. top
    sieve[i] = i
  end
  for i in 2 .. Math.sqrt(top)
    next unless sieve[i]
    (i*i).step(top, i) do |j|
      sieve[j] = nil
    end
  end
  return sieve.compact
end

primes = sieve_upto(2000000)
puts primes.inspect
# puts primes[10000]

# Mon_Ouie: The numbers above the square root don't need to check them, because each of them will be matched by a number below it
# Mon_Ouie: But you are sure you won't find a multiple of 100 after sqrt(100) if you haven't found one before
# Mon_Ouie: Because if there's a number greater than sqrt(100), then there's also a number smaller than sqrt(100) so that a * b == 100
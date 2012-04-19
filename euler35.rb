# The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.
# 
# There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
# 
# How many circular primes are there below one million?

# def collect_primes(number)
#   
#   sieve = [nil, nil] + (2 .. number).to_a
#   
#   (2 .. Math.sqrt(number)).each do |n|
#     next unless sieve[n]
#     (n*n).step(number, n) do |num|
#       sieve[num] = nil
#     end
#   end
#   
#   primes = []
#   sieve.each do |x|
#     if x != nil
#       primes << x
#     end
#   end
#   return primes
# end
# 
# 
# 
# def circular_primes(number)
#   
#   primes = collect_primes(number)
#   prime_array = number.to_s.split("").map { |x| x.to_i }
# 
#   circular_primes = []
#   
#   primes.each do |prime|
#     
#     count = 0
#     
#     if prime.to_s.length == 1
#       circular_primes << prime
#       puts "Circular prime found! #{prime}"
#     elsif prime.to_s.length > 1
#       prime_permutations = prime.to_s.split("").permutation(prime.to_s.length).to_a.map { |x| x.join.to_i }
#       
#       prime_permutations.each do |permutation|
#         if primes.include?(permutation)
#           count += 1
#         else
#           count = 0
#         end
#       end
#     end
#     
#     if count > 0
#       circular_primes << prime
#       puts "Circular prime found! #{prime}"
#     end
#       
#       
#     
#   end
#   
#   
#   return circular_primes
# 
# 
# end
# 
# print circular_primes(1000000).length # Maybe would work, but would take several years, I suspect

require 'mathn'
puts (1..1000000).select { |i|
	(1..i.to_s.length).all? { |j|
		i.to_s.split('').rotate(j).join('').to_i.prime?
	}
}.count


# i = 1
# permutations = []
# 
# 1.upto(prime_array.length) do
#   permutations += prime_array.permutation(i).to_a.map { |x| x.join.to_i }
#   i += 1
# end
# return permutations

# return (1..prime_array.size).map{|i|prime_array.permutation(i).to_a}.flatten(1)

# return (1..prime_array.size).inject([]) {|res,i| res << prime_array.permutation(i).to_a}.flatten(1)


#   circular_primes = []
#   
#   permutations.each do |permutation|
#     puts "Permutation: #{permutation}"
# 
# 
#     count = 0
#     
#     primes.each do |prime|
#       puts "Now checking: #{prime}"
#       if (permutation % prime == 0)
#         if permutation != prime
#           count += 1
#         end
#       end
#     end
#     
#     if count == 0
#       circular_primes << permutation
#     end
#   end
# 
# return circular_primes
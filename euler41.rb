# We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is also prime.
# 
# What is the largest n-digit pandigital prime that exists?


# def collect_primes(limit)  
#   prime_numbers = [1,2]
#   n = 3
# 
#   while n <= limit
#     puts "Number: #{n}"
#     if (n > 2) and (n % 2 == 0)
#       puts "Number #{n} is even"
#       n += 1
#       break
#     end
# 
#     prime_numbers.each do |prime|
#       if (prime > 1) and (n % prime == 0)
#         puts "Number #{n} is odd and composite"
#         break
#       else
#         prime_numbers << n
#       end
#     end
#     
#     n += 1
#   end
#   
#   return prime_numbers
# end
# 
# puts collect_primes(10)



def find_primes(limit)

  primes = [1,2]
  n = 3
  while n <= limit
    puts "Handling #{n}"
    if (n % 2 == 0) and (n > 2)
      puts "#{n} is even and not prime"
    end
    
    prime = false
    
    primes.each do |prime|
      # The purpose of this code is to add 3 to the list of primes.
      
      if (n % prime == 0) and (prime > 2) and (prime != n)
        prime = false
        next
      end
    end
      
    if prime == true
      puts "#{n} is prime"
      primes << n
    end
    
    
    # primes.each do |prime|
    #   
    #   puts "Current prime: #{prime}"
    #   if (prime > 2) and (prime != n)
    #     if n % prime == 0
    #       puts "#{n} is not prime"
    #       prime = false
    #     else
    #       prime = true
    #     end
    #   end
    #   
    # end
    # 
    # if prime == true
    #   puts "#{n} is prime"
    #   primes << n
    # end
    
    # primes.each do |prime|
    #   puts "Current prime number: #{prime}"
    #   if (n % prime == 0) and (prime > 1)
    #     puts "#{n} is not even and is composite"
    #   else
    #     primes << n
    #   end
    # end
    
    n += 1
  end
  
  return primes
end

puts find_primes(4).inspect



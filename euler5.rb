# Project Euler Problem 5

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# 
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


# def fact(n)
#    1.upto(n).inject(:*)
# end
# 
# numbers_array = (1..20).to_a.map {|i| i = fact(i) }
# puts numbers_array

# good_numbers = []
# numbers_array.reverse.each do |x|
#   (1..10).each do |y|
#     
#   numbers_array.each do |y|
#     puts "x: #{x}, y: #{y}"
#     even = true
#     if x % y == 0
#       even = true
#     else
#       even = false
#     end
#   end
#   if even = true
#     good_numbers << x
#   end
# end
# puts good_numbers

# def find_factors(composite)
#   n = 1
#   div = 0
#   factors = []
#   loop do
#     if composite % n == 0 # If n is a factor
#       div = composite / n # then divide composite num by factor
#       factors << n # Add factor n to array of factors
#       factors << div # Add large div factor array of factors
#       highest = div # Set div to be the highest possible factor
#       puts "n: #{n}"
#       puts "div: #{div}"
#       puts "highest: #{highest}"
#     end
#     n += 1
#     break if n > div
#   end
#   return factors
# end

factors = []
factors = (2..20).to_a

def sort_factors(array)
  primes = []
  composites = []
  array.each do |factor1| #these nested loops sort the factors into primes and composites
    composite = false
    array.each do |factor2|
      if (factor2 < factor1) and (factor1 % factor2 == 0) #if factor2 is a factor of factor1
        composites << factor1 #adds the composite factor to the array of composites
        composite = true
      end     
    end
    if not composite #tests if the factor is prime, i.e., no factor was found for it
      primes << factor1 #adds the prime factor to the array of unique prime factors
    end
  end
  composites = composites.uniq
  return primes, composites
end

result = sort_factors(factors)

puts "Primes: #{result[0]} \nComposites: #{result[1]}"


primefactorization = []

result[1].each do |composite|
  primefactorization << [composite,[[]]]
  
	numbertocheck = composite
	puts "Composite number: #{composite}"
	
		result[0].each do |prime|
	  puts "Prime number: #{prime}"
	  n = 1
		while numbertocheck % prime == 0 # prime is a prime factor of number to check
		  puts "Number to check: #{numbertocheck}"
			if primefactorization.last[1].last[0].nil?
			  primefactorization.last[1].last << prime << 1
			elsif primefactorization.last[1].last[0] != prime
			    primefactorization.last[1] << [prime, 1] #add prime factor to hash CHECK SYNTAX!
			    puts "Inspecting primefactorization first: #{primefactorization.inspect}"
			else 
			    primefactorization.last[1].last[1] += 1  
			    puts "Inspecting primefactorization second: #{primefactorization.inspect}"				
			end
			
			# if primefactorization.last[1].last.nil?
			#               primefactorization.last[1].last << 1
			#             else
			#               primefactorization.last[1].last += 1
	    
			numbertocheck = numbertocheck / prime
			puts "Checking final numbertocheck: #{numbertocheck}"
		end
		break if numbertocheck == 1	
	end
end
    
puts primefactorization.inspect


    
prime_factors1 = []
    result[0].each do |prime|
      prime_factors1 << [prime, 1]
    end
  puts "prime_factors1 #{prime_factors1.inspect}"

prime_factors2 = []
primefactorization.each do |num_factors|
    num_factors[1].each do |pfs|
      prime_factors2 << pfs
    end
end
puts "prime factors2: #{prime_factors2.inspect}"

min_factors = []   
prime_factors1.each do |pfs1|
  powers = []
  prime_factors2.each do |pfs2|
    if pfs1[0] == pfs2[0]
     powers << pfs2[1]  
    end    
  end
  if powers.max != nil
    pfs1[1] = powers.max
    min_factors << pfs1
  else
    min_factors << pfs1  
  end
end   

puts "min_factors: #{min_factors.inspect}"    

final_answer = 1
min_factors.each do |mfs|
  puts "mfs[0]: #{mfs[0]} mfs[1]: #{mfs[1]}"
   puts "multiplied out prime factors #{mfs[0]**mfs[1]}"
   final_answer = final_answer * mfs[0]**mfs[1]
end

#puts "multiply: #{multiply}"

#final_answer = 1
#multiply.each do |x|
#final_answer = final_answer * x
#end
puts "Final Answer: #{final_answer}"  
 
#final_answer = multiply.inject(:*)
#puts "Final Answer with inject: #{final_answer}"
   
   
 #  puts "prime_factors1.length: #{prime_factors1.length}"
  #  primefactorization.each do |comp_pfs|
   #   n = 0
    #  loop do
     #   comp_pfs[1].each do |prime_power2| 
      #    if prime_factors1[n][0] == prime_power2[0]
       #     prime_factors1[n][1] = [prime_factors1[n][1], prime_power2[1]].max
        #    
  #        end
     #   end      
   #     n += 1
    #    break if n = prime_factors1.length
  #    end
      
   # end
    
    #puts prime_factors1.inspect
    
# The following iterative sequence is defined for the set of positive integers:
# 
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
# 
# Using the rule above and starting with 13, we generate the following sequence:
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# 
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# 
# Which starting number, under one million, produces the longest chain?
# 
# NOTE: Once the chain starts the terms are allowed to go above one million.


  numbers = [0,1,2]
  for n in (3..1000000)
    
    number = n
    num_of_steps = 0
  
    while n > 1
    
      if n % 2 == 0
        n = n / 2
      else
        n = (n * 3) + 1
      end
      num_of_steps += 1
    
    end
    numbers[number] = num_of_steps
  end
    
  puts numbers.max
  
  
  def collatz
     if not collatz_numbers[n].nil?
         collatz_numbers[n] = (if n % 2 == 0 collatz(n/2) else collatz(3*n+1) end)+ 1
     end
     return collatz_numbers[n]
  end

  puts (1..1000000).map {|n| collatz(n)}.max



# def chain_number(collatz_num) 
#   
#   collatz_num = Integer(collatz_num)
#   
#   length_array = [0,1,2]
#   
#   flagged_numbers = []
#   
#   for number in (3..collatz_num) do
#     
#     # puts "Current number: #{number}"
#     
#     if number % 2 == 0
#       number = number / 2
#     elsif number % 2 == 1
#       number = (number * 3) + 1
#     end
#     
#     # if f( n ) = y, then f(n*2) = y + 1 (shortcut)
#     
#     if length_array[number] == nil
#       # puts "Length array when checking #{number}: #{length_array}"
#       flagged_numbers << number
#       # puts "Flagged numbers: #{flagged_numbers.inspect}"
#     else
#       
#       if not flagged_numbers.empty?
#         
#         # puts "Flagged numbers when checking non_empty number #{number}: #{flagged_numbers.inspect}"
#         
#         x = number + 1 # x represents the length of the collatz sequence for "num", basically
#         flagged_numbers.reverse.each do |num|  # 4, 8, 16, 5, 10
#           # puts "Length array: #{length_array.inspect}"
#           
#           length_array[num] = x
#           x += 1
#         end
#         number = flagged_numbers.last
#         flagged_numbers = [] # reset flagged numbers
#       else
#         number += 1
#       end
#     end
# 
#   end
#   
#   # length_array.collect! { |x| (x.eql?(nil))?-1:x }
#   # puts length_array.index(length_array.max)
#   puts length_array.inspect
#   
#   
# end
# 
# chain_number(100)

# On the first page I write 1 because the length of the first chain is 1
# 
# On the second page I write 2
# 
# To calculate f(3) I turn to page 10, and see that it's empty. 
# I put a sticky note there and go to page 5. I put a sticky note there and go to page 16. 
# I put a sticky note there and go to page 8. I put a sticky note there and go to page 4 (add sticky). 
# I go to page 2 and see that the number is 2.
# 
# So, on page 4 I write 3.
# 
# On page 8 I write 4.
# 
# On page 16 I write 5.
# 
# On page 5 I write 6.
# 
# On page 10 I write 7.
# 
# On page 3 I write 8.
# 
# Now I go to page 4. It already has a number on it, so I go to page 5.
# 
# And so on.
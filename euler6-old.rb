def sum_of_squares(int)
  n = 1
  nums = []
  while n <= int
    nums << n
    n += 1
  end
  #puts "nums: #{nums}" 
  sum = 0
  nums.each do |x|
    sum += + x**2
  end
  return sum  
end  



def square_of_sums(int)
  n = 1
  nums = []
  while n <= int
    nums << n
    n += 1
  end
  #puts "nums: #{nums}"
  sum = 0
  nums.each do |x|
    sum += x
  end
  return sum**2
end

puts "square of sums:#{square_of_sums(100)}"
puts "sum of squares: #{sum_of_squares(100)}"

dif = square_of_sums(100) - sum_of_squares(100)

puts "Answer: #{dif}"
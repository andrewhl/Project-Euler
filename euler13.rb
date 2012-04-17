# Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.

numbers = []

File.open('euler13numbers.txt').each_line do |s|
  numbers << s.chomp.to_i
end


sum = numbers.inject(:+)
puts sum.to_s[0,10]

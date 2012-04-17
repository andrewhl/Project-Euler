# A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions with denominators 2 to 10 are given:
# 
# 1213141516171819110=0.5=0.3−=0.25=0.2=0.16−=0.142857−−−−−−=0.125=0.1−=0.1
# Where 0.16− means 0.1666…, and has a 1-digit recurring cycle. It can be seen that 17 has a 6-digit recurring cycle.
# 
# Find the value of d<1000 for which 1d contains the longest recurring cycle in its decimal fraction part.

x = 1

while x < 1000
  puts "#{x}: #{1/x.to_f}"
  x += 1
end


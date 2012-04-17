# Project Euler 22

def name_to_num(name)
  return name.chars.map{|c| (c.ord-'A'.ord)+1}.inject(:+)
end

names_array = []
names = open('names.txt')
quoted_names = []
names.each do |line|
  quoted_names += line.split(",")
  quoted_names.map!{|name| name[1,name.length-2]}
  
  #names_array << line.split("\",\"")
  
end

quoted_names.sort!{|a,b| a <=> b}
index = 1
sum = 0
quoted_names.each do |name|
  sum += index * name_to_num(name)
  index += 1
end

puts sum
  
#puts quoted_names.inspect



# values = [a..z].map { |letter| letter.ord - 96 }


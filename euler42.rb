# The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1); so the first ten triangle numbers are:
# 
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
# 
# By converting each letter in a word to a number corresponding to its alphabetical position and adding these values we form a word value. For example, the word value for SKY is 19 + 11 + 25 = 55 = t10. If the word value is a triangle number then we shall call the word a triangle word.
# 
# Using words.txt (right click and 'Save Link/Target As...'), a 16K text file containing nearly two-thousand common English words, how many are triangle words?


@triangles = (1..1000).map { |n| (n*(n+1))/2 }.to_a

# puts triangle_numbers.inspect


def is_triangle_word?(word)
  
  word = word.downcase.split("")
  
  letter_values = []
  alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  
  word.each do |letter|
    letter_values << alphabet.index(letter) + 1
  end
  
  word_value = letter_values.inject(:+)

  return true if @triangles.include?(word_value)
end

triangles = (1..1000).map { |n| (n*(n+1))/2 }.to_a
# puts triangles

# File.read(File.dirname(__FILE__) + '/words.txt').scan(/\w+/).select { |word|
# 
# words = []
# 
words = File.read('words.txt').scan(/\w+/)

count = 0

words.each do |word|
  if is_triangle_word?(word)
    count += 1
  end
end

puts count
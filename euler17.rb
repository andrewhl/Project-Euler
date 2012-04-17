# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# 
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
# 
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

def convert_ones(num)
  
    case num
      
    when 0
      num = "zero"
    when 1
      num = "one"
    when 2
      num = "two"
    when 3
      num = "three"
    when 4
      num = "four"
    when 5
      num = "five"
    when 6
      num = "six"
    when 7
      num = "seven"
    when 8
      num = "eight"
    when 9
      num = "nine"
    end
    
    return num
    
end

def convert_tens(num)
    
    second_number = num.to_s[1].to_i
    second_number = convert_ones(second_number)
    
    case num
      
    when 10
      first_number = "ten"
    when 11
      first_number = "eleven"
    when 12
      first_number = "twelve"
    when 13
      first_number = "thirteen"
    when 14
      first_number = "fourteen"
    when 15
      first_number = "fifteen"
    when 16
      first_number = "sixteen"
    when 17
      first_number = "seventeen"
    when 18
      first_number = "eighteen"
    when 19
      first_number = "nineteen"
    when 20..29 
      first_number = "twenty"
    when 30..39
      first_number = "thirty"
    when 40..49
      first_number = "forty"
    when 50..59
      first_number = "fifty"
    when 60..69
      first_number = "sixty"
    when 70..79
      first_number = "seventy"
    when 80..89
      first_number = "eighty"
    when 90..99
      first_number = "ninety"
    end
    
    if (num > 19) and (second_number != "zero")
      word_number = first_number + "-" + second_number
    else
      word_number = first_number
    end
    
    return word_number
  
end

def convert_hundreds(num)
  
  if (num.to_s[1].to_i == 0) and (num.to_s[2].to_i > 0)
    other_numbers = convert_ones(num.to_s[2].to_i)
  elsif (num.to_s[1].to_i == 0) and (num.to_s[2].to_i == 0)
    other_numbers = ""
  else
    other_numbers = convert_tens(num.to_s[1,2].to_i)
  end
  
  case num
    
  when 100..199
    hundred_number = "one hundred"
  when 200..299
    hundred_number = "two hundred"
  when 300..399
    hundred_number = "three hundred"
  when 400..499
    hundred_number = "four hundred"
  when 500..599
    hundred_number = "five hundred"
  when 600..699
    hundred_number = "six hundred"
  when 700..799
    hundred_number = "seven hundred"
  when 800..899
    hundred_number = "eight hundred"
  when 900..999
    hundred_number = "nine hundred"
  end
  
  if other_numbers == ""
    final_number = hundred_number
  else
    final_number = hundred_number + " and " + other_numbers
  end
    
  return final_number
end

def convert_number_to_word(num)
  
  if num.to_s.length == 1
    return number_word = convert_ones(num)
  elsif num.to_s.length == 2
    return number_word = convert_tens(num)
  elsif num.to_s.length == 3
    return number_word = convert_hundreds(num)
  end
  
end

x = 1
word_numbers = []
while x < 1000
  word_numbers << convert_number_to_word(x)
  x += 1
end

lengths = []

word_numbers = word_numbers.map { |x| x.gsub(/\s+/, "")}.map { |x| x.gsub(/-/, "") }
word_numbers.each do |x|
  lengths << x.length
end

puts lengths.inject(:+) + 11
# You are given the following information, but you may prefer to do some research for yourself.
# 
#     1 Jan 1900 was a Monday.
#     Thirty days has September,
#     April, June and November.
#     All the rest have thirty-one,
#     Saving February alone,
#     Which has twenty-eight, rain or shine.
#     And on leap years, twenty-nine.
#     A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
# 
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

# 1 Jan 1900 was a monday

require 'date'

# leap_years = []
# 
# year = 1901
# 
# while year <= 2000
#   if Date.gregorian_leap?(year)
#     leap_years << year
#   end
#   year += 1
# end

# J = 1  31
# F = 2
# M = 3
# A = 4  30
# M = 5
# J = 6  30
# J = 7
# A = 8
# S = 9  30
# O = 10
# N = 11  30
# D = 12
  
year = 1901
month = 1
day = 1
count = 0
Date.new(year,month,day)

while (year <= 2000) and (month <= 12) and (day <= 31)
  puts "#{year},#{month},#{day}"
  if (Date.new(year,month,day).mday == 1) and (Date.new(year,month,day).sunday?)
    count += 1
  end
  
  if (Date.new(year,month,day).month == 12) and (Date.new(year,month,day).day == 31)
    day = 1
    month = 1
    year += 1
  elsif Date.new(year,month,day).next_day.month != Date.new(year,month,day).month
    day = 1
    month += 1
  else
    day += 1 
  end
end

puts count

# def calculate_days
#   
#   months = Hash["January"=>31,"February"=>29,"March"=>31,"April"=>30,"May"=>31,"June"=>30,"July"=>31,"August"=>31,"September"=>30,"October"=>31,"November"=>30,"December"=>31]
#   days = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
#   
#   months.each do |key,value|
#     
#   end
#   
# end
# 
# 
# class Calendar
#   
#   months = Hash["January"=>31,"February"=>29,"March"=>31,"April"=>30,"May"=>31,"June"=>30,"July"=>31,"August"=>31,"September"=>30,"October"=>31,"November"=>30,"December"=>31]
#   puts months["January"]
#   
#   def years
#     
#     
#     
#   end
#   
#   def months
#     
#   end
#   
#   def weeks
#     
#   end
#   
#   def days
#     
#     
#     
#   end
#   
# end


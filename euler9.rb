values = []
(1..1000).each do |a|
  
  unless (a - 1000) == 0
    formula1 = ((a - 1000) * a + 500000) / (a - 1000).abs
    formula2 = a + (1000 * (a - 500) / (a - 1000)) - 1000
    if formula1 == formula2
      puts a
    end
  end
end



# float % 1 == 0
number = 1
power = 0
while number < 10_000 do 
  number *= 3
  power += 1
end
puts "#{number/3}, or 3 ** #{power - 1}, is the highest power of 3 less than 10,000"

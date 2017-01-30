data = []
input = 0.0

print "Enter the score or negative answer to quit"
input = gets.to_f

while input >= 0 do
  data << input
  print "Enter next score, or negative number to quit: "
  input = gets.to_f
end  

# Display array contents to check that it worked
data.each do |item|
  puts item
end
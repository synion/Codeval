in_file = open("data.txt","r")

in_file.each do |line|
  puts line
end

in_file.close

p "Finish"
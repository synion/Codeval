File.open("16.txt").each_line do |line|
  number = line.to_i
  puts number.to_s(2).count("1")
end

File.open("16.txt").each_line do |line|
  puts line.to_i.to_s(2).count("1")
end

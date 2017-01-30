File.open("173.txt").each_line do |sentense|
  puts sentense.squeeze
end
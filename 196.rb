File.open("196.txt").each_line do |line|
  words = line.split(' ')
  0.upto words.length - 1 do |i|
    words[i][0],words[i][-1] = words[i][-1],words[i][0]
  end
  puts words.join(' ')
end

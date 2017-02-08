File.open("101.txt").each_line do |line|
  a = line.scan(/\d/).map(&:to_i)
  a = a.each_slice(2).map(&:to_ary)
  p a.map {|x,y| (x-y).abs}.uniq.length == 1
end






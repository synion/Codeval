File.open('81.txt').each_line do |line|
  arr = line.split(',').map(&:to_i)
  check = arr.permutation(4).map(&:to_a)
  puts check.select {|a| a.inject(:+) == 0}.length / 24
end  
File.open(ARGV[0]).each_line do |line|
  char_string = line.chomp.split('')
  puts char_string.permutation.map{|new_string| new_string.join}.sort.join(',')
end

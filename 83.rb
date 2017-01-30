File.open('83.txt').each_line do |line|
  a = line.scan(/[a-zA-Z]/).map(&:downcase)
  b = a.uniq
  c = []
  puts a.join(' ')
 #  check = (1..26).to_a.reverse!
 #  d = 0
 #  0.upto b.length - 1 do |i|
 #   c << a.count(b[i])
 # end
 # c = c.sort.reverse!
 #  0.upto c.length - 1 do |j|
 #    d += c[j]*check[j]
 #  end
 #  puts d 

end  
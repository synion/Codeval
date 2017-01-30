File.open("211.txt").each_line do |line|
  a = line.chomp.split(" | ")
  c = a[0].split(' ')
  b = a[1].split('')
  d = []
  0.upto c.length - 1 do |j|
    d[j] = []
  end
  0.upto c.length - 1 do |i|
    c[i].each_char {|a| d[i] << a}
  end
  0.upto b.length - 1 do |f|
    0.upto c.length - 1 do |k|
       c[k].index(b[f]
    end
  end
end


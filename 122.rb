File.open('122.txt').each_line do |line|
  a = line.scan(/[a-j]|\d/)
  letter = "abcdefghij"
  if !a.empty?
    0.upto a.length - 1 do |i|
      if letter.include? a[i]
        a[i] = letter.index(a[i])
      end
    end
    puts a.join
  else
    puts "NONE"
  end
end


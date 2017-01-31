File.open('74.txt').each_line do |line|
  number = line.to_i
  i = 0
  while number >= 1 do
    if number >= 5
      i += (number / 5)
      number %= 5
    elsif number >= 3
      i += (number / 3)
      number %= 3
    else
       i += (number / 1)
       break
    end  
  end
  puts i
end

      
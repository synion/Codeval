



require 'pry'
File.open("197.txt").each_line do |line|
  a = line.to_i
  letter = ("A".."Z").to_a
  letter = "_" + letter.join('')
  number = 0
    while a >= 26 
        if a%26 == 0
          print letter[26]
        else  
          print letter[a%26]
        end  
        a /= 26
    end        
    puts letter[a]
end  
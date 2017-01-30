File.open('78.txt').each_line do |line|
  size_of_square = line.split(";")[0].to_i
  number_in_square = line.split(';')[1].split(',').map(&:to_i)
  first_check = number_in_square.each_slice(size_of_square).map{|a| a}
  second_check = number_in_square.group_by.each_with_index {|item, index| index % size_of_square }
  thirt_check = number_in_square.each_slice(size_of_square).
                                map{|a| a.each_slice(Math.sqrt(size_of_square)).map{|chunk| chunk}}.
                                transpose.flatten.each_slice(size_of_square).map{|a| a}

                              
  checklist = []
  0.upto size_of_square - 1 do |i|
    checklist.push((first_check[i].sort == (1..size_of_square).to_a),
                   (second_check[i].sort == (1..size_of_square).to_a),
                   (thirt_check[i].sort == (1..size_of_square).to_a))

  end
  
    if checklist.include?(false)
      puts "False"
    else 
      puts "True"
    end 
 puts second_check

end  
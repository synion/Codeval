def size_vector(x,y)
  Math.sqrt(a**2 + b**2)
end  

File.open("101.txt").each_line do |line|
  
  coordinates = line.scan(/\d/).map(&:to_i).
                each_slice(2).map { |a| a }

  

  # # if  (cordx[0]-cordx[1]).abs == (cordx[2]-cordx[3]).abs &&
  # #     (cordx[0]-cordx[2]).abs == (cordx[1]-cordx[3]).abs &&
  # #     (cordx[0]-cordx[3]).abs == (cordx[1]-cordx[2]).abs &&
  # #     (cordy[0]-cordy[1]).abs == (cordy[2]-cordy[3]).abs &&
  # #     (cordy[0]-cordy[2]).abs == (cordy[1]-cordy[3]).abs &&
  # #     (cordy[0]-cordy[3]).abs == (cordy[1]-cordy[2]).abs
  # #   puts true
  # # else
  # #   puts false
  # # end
  # p cordx
end      


  def coordinates?(a,b)
    a < b
  end
  def cooridnates_eq?(a,b)
    a == b
  end
File.open('192.txt').each_line do |line|
  my_coordinates = [line.split(' ')[0],line.split(' ')[1]].map(&:to_i)
  group_coordinates = [line.split(' ')[2],line.split(' ')[3]].map(&:to_i)
  x_my,x_group = my_coordinates[0],group_coordinates[0]
  y_my,y_group = my_coordinates[1],group_coordinates[1]

  if cooridnates_eq?(y_my,y_group) && cooridnates_eq?(x_my,x_group)
    puts "here"
  else  
    a = ("N" if coordinates?(y_my,y_group)) || ("" if cooridnates_eq?(y_my,y_group)) || "S"
    b = ("E" if coordinates?(x_my,x_group)) || ("" if cooridnates_eq?(x_my,x_group)) || "W"
    puts a + b
  end  


end
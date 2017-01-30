File.open('70.txt').each_line do |line|
  coordinates = line.split(',')
  ax1 = coordinates[0].to_i
  ax2 = coordinates[2].to_i
  ay1 = coordinates[1].to_i
  ay2 = coordinates[3].to_i
  bx1 = coordinates[4].to_i
  bx2 = coordinates[6].to_i
  by1 = coordinates[5].to_i
  by2 = coordinates[7].to_i
  if ax1 < ax2
    ax = (ax1..ax2).to_a
  else
    ax = (ax2..ax1).to_a
  end
  if ay1 < ay2
    ay = (ay1..ay2).to_a
  else
    ay = (ay2..ay1).to_a
  end
  if bx1 < bx2
    bx = (bx1..bx2).to_a
  else
    bx = (bx2..bx1).to_a
  end
  if by1 < by2
    by = (by1..ay2).to_a
  else
    by = (by2..by1).to_a
  end
  
  if (((ax & bx).length > 1) && (ax != bx))  && (((ay & by).length > 1)) && (ay != by))  
    puts "True"
  else 
    puts "False"
  end    
 

end

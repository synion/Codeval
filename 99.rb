def vektor(a,b)
 [a[0]-b[0],a[1]-b[1]]
end
def vektor_length(w)
  Math.sqrt((w[0]**2) + (w[1]**2)).to_i  
end
def search_number(line)
  work = (-100..100).to_a.map(&:to_s)
  (line & work).map(&:to_i)
end
File.open('99.txt').each_line do |line|
  coordinates = line.chomp.gsub(/[,)(  ]/, '*').split("*")
  selected_coordinates = search_number(coordinates)
  a = [selected_coordinates[0],selected_coordinates[1]]
  b = [selected_coordinates[2],selected_coordinates[3]]
  p vektor_length(vektor(a,b))
end
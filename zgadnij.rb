slowo = ['fiolek','roza','cycki']
sekret = slowo[rand(3)]


print "Zgadniesz"

while odp = STDIN.gets
  odp.chop!
  if odp == sekret
    puts "Wygrałes"
    break
  else
    puts "Przykro mi, przegrales."
end
print "zgadniesz? "
end
puts "Chodzilo o ", sekret, "."
      
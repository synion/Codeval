# def draw_count_delivery(delimiter,count)
#   puts delimiter * count
# end
# draw_count_delivery(1.25,90)

class Calc
  attr_accessor :a,:b
  def initialize(a,b)
    @a = a
    @b = b
  end 
  def dodawanie
   puts a.to_i + b.to_i
  end
end
puts "Wpisz a"
a = gets.chomp!
puts "Wpisz jakie dzialanie"
c = gets.chomp!
puts "Wpisz b"
b = gets.chomp!
if c == "+"
  Calc.new(a,b).dodawanie
else
  puts "I dont now bye"
end

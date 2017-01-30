File.open('2.txt') do |sentense|
  values = sentense.map {|value| value.chomp}
  quantity = values[0].to_i
  values_for_check = values[1..-1]
  puts values_for_check.max_by(quantity){|value| value.length} 
end
require 'json'

File.open('102.txt').each_line do |line|
a =  JSON.parse(line)
puts a["menu"]["items"].compact
    .select {|a| a.has_key?("id") && a.has_key?("label") || a["id"] = 0 }
    .map { |a| a["id"] }.inject(:+)
end

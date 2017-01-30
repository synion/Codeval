filename = " "
in_file = nil

print "Enter the filename"
filename = gets.chomp!

if File.exists?(filename) && File.readable?(filename) 
  in_file = File.open(filename, "r") 

  in_file.each do |line|
    puts line
  end

  in_file.close

  puts "finish"
elsif !File.exists?(filename)
  puts "File not exstist"
elsif !File.readable?(filename)
  puts "Can't read"
end
      
  
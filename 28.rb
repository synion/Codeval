File.open("28.txt").each_line do |line|
  examples = line.chomp.split(',') 
  word_search = examples[0]
  word = examples[1]
  if word_search =~ /[#{examples[1]}]/ 
    puts true
  else 
    puts false
  end
  
end     
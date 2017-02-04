File.open("35.txt").each_line do |email|
  # b = /^[a-zA-Z1-9_]+@([a-zA-Z1-9_]+.)[a-z]+$/
  # a = line.chomp
  # if (b =~ a) == 0
  #   puts true
  # else
  #   puts false
  # end
  p email.match(/^[a-zA-Z1-9_]+@([a-zA-Z1-9_]+.)[a-z]+$/) ? true : false
end

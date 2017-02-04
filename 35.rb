File.open("35.txt").each_line do |email|
  p email.match(/^[a-zA-Z1-9_]+@([a-zA-Z1-9_]+.)[a-z]+$/) ? true : false
end

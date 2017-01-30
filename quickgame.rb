number = 0
player_guess = nil
player_number = 0
points = 0
player_points = 0
def give_instructions
  puts "In this game, I will choose a number from 1 to 10."
  puts "You will also choose a number from 1 to 10."
  puts "If the sum of the numbers is even, you get one point."
  puts "If the sum is odd, I get one point."
  puts
  puts "Just press the ENTER key to quit,"
  puts "or H to see this help again."
end
give_instructions
while player_guess != "" do
  number = 1 + rand(10)
  
  print "Enter a number, H for help, or just ENTER to quit: "
  player_guess = gets.chomp
  
  if player_guess.upcase == "H" then
    give_instructions
  elsif player_guess != "" then
    player_number = player_guess.to_i
    if player_number >= 1 and player_number <= 10 then
      if (player_number + number) % 2 == 0 then
        puts "I chose #{number}. You get a point."
        player_points += 1
      else
        puts "I chose #{number}. I get a point."
        points += 1
      end
    else
      puts "#{player_guess} is not a number from 1 to 10."
    end
  end
  puts # a blank line
end

puts "Thanks for playing. "
puts "My points: #{points} Your points: #{player_points}."

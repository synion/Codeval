
ammount = 100
dice_1 = (1..6).to_a
dice_2 = (1..6).to_a
check = [2,3,7,11,12]
play = 1
input = "Z"
while ammount != 0 && play != 0
  puts "You have #{ammount}$"
  puts "You want to roll the D)ice or Q)uit"
  input = gets.chomp
    if input.upcase == "D"
      roll = 0 
      while !(check.include?(roll))
      roll = dice_1[rand(5)] + dice_2[rand(5)]
      puts "Your number is #{roll}"  
        if roll == 2 || roll == 3 || roll == 12
          ammount -= 10
          puts "crap"
          break
        elsif roll == 7 || roll == 11
          ammount += 10
          puts " You win"
          break
        end
      end
    elsif input.upcase == "Q"
      puts "Bye"
      play = 0
      break
    else 
      puts "What?? only D)ice or Q)uit"  
    end
end






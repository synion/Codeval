File.open("116.txt").each_line do |line|
  sentence = line.chomp.split(/ /)

  morse_code = {"a" => ".-",
                "b" => "-...",
                "c" => "-.-.",
                "d" => "-..",
                "e" => ".",
                "f" => "..-.",
                "g" => "--.",
                "h" => "....",
                "i" => "..",
                "j" => ".---",
                "k" => "-.-",
                "l" => ".-..",
                "m" => "--",
                "n" => "-.",
                "o" => "---",
                "p" => ".--.",
                "q" => "--.-",
                "r" => ".-.",
                "s" => "...",
                "t" => "-",
                "u" => "..-",
                "v" => "...-",
                "w" => ".--",
                "x" => "-..-",
                "y" => "-.--",
                "z" => "--..",
                " " => " ",
                "1" => ".----",
                "2" => "..---",
                "3" => "...--",
                "4" => "....-",
                "5" => ".....",
                "6" => "-....",
                "7" => "--...",
                "8" => "---..",
                "9" => "----.",
                "0" => "-----"}
    0.upto sentence.length - 1 do |i|
      if morse_code.key(sentence[i]).nil? 
        print morse_code.key(" ") 
      else
        print morse_code.key(sentence[i]).upcase
      end    
    end
      puts 

end
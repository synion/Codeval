File.open("110.txt").each_line do |line|
  h = {}

  def gaps(check,h,int = 1,c = []) 
   
  names = ["negative", 
          "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine",
          "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen",
          "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety",
          "hundred",
          "thousand",
          "million"]
  numbers = [-1,
            (0..9).to_a,
            (10..19).to_a,
            (20..90).step(10).to_a,
            100,
            1000,
            1000000].flatten!
  0.upto names.length - 1 do |i|
    h[names[i]] = numbers[i]
  end
  c = []
  check = line.chomp.split(' ')
  if check.length >= 2 
    if check[0] == "negative"
      check.shift
      if check.length == 1
        puts h[check[0]] * - 1
      else   
        gaps(check,h,-1)
      end  
    else
      gaps(check,h)
    end
  else
    puts h[check[0]]
  end  
end

  # else
  #   if h[check[0]] == "negative" 
  #     puts h[check[0]] * [h[check[1]]]
  #   elsif h[check] > h [] 


        


      




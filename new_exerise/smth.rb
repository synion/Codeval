  require'pry'
  def hundred (number,h,c = 0)
    gap = 0
    while gap <= number.length - 2   do
      if h[number[gap]] < h[number[ gap + 1 ]]
         c *= h[number[gap + 1]]
      else 
         h[number[gap]] > h[number[ gap + 1 ]]
         c += h[number[gap + 1]]
      end
      gap += 1
    end
    puts c
  end
 number = "nine hundred ninety nine million".split(' ')
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
  h = {}
  0.upto names.length - 1 do |i|
    h[names[i]] = numbers[i]
  end
  d = []

  
 hundred(number,h)   
         
           


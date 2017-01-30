require 'pry'
def pascal(k,line = [],pasc = [1])
  if k == 1
    print 1
  else
    
    (k - 1).times do |i|
       line.unshift 1
       line.push 1
       pasc[i + 1] = line
       line = []
        0.upto pasc[i + 1].length - 2 do |j|
          line << pasc[i + 1][j] + pasc[i + 1][j + 1]
        end
     end
     print  pasc.join(' ')
  end  
end    
puts pascal(6)
require 'pry'
a = [3,4,5,2,1]
gap = a.length
swaps = true
check = []
while gap > 1 || swaps 
  gap = [1,(gap / 1.25).to_i].max
  swaps = false
  0.upto( a.length - gap - 1 ) do |i|
    if a[i] > a[i+gap]
      a[i],a[i+gap] = a[i+gap],a[i]
      swaps = true
      binding.pry
      check << swaps
    end
    check << swaps
  end
end  
p check
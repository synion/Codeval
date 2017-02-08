# bindind.pry

  # Sorts an array using comb sort.
  # def comb_sort(array, compare = lambda { |a, b| a <=> b })
  #   gap = array.length
  #   shrink_factor = 1.30
  #   swapped = false
  #   d = Hash.new
  #   d.default = []
  #   while gap > 1 || swapped
  #     if gap > 1
  #       gap = (gap / shrink_factor).floor
  #     end
  #     swapped = false
  #     i = 0
  #     while gap + i < array.length
  #       if compare.call(array[i], array[i + gap]) > 0
  #         array[i], array[i + gap] = array[i + gap], array[i]
  #         swapped = true
  #         d[gap] = d[gap] << true
  #       end
  #       i += 1
  #     end
  #   end
  #   array.join(',')
  #   # .size - d.min_by {|k,v| k}.first.to_i
  # end


File.open("223.txt").each_line do |line|
  a = line.split(' ').map(&:to_i)
  swap = true
  size = a.length
  gap = 1.25
  d = Hash.new
  d.default = []
  while size >= 1 && swap
    size = size / gap
    (a.length - size.to_i).times do |i|
      if a[i] > a[i + size]
        a[i],a[i + size] = a[i + size], a[i]
        d[size.to_i] = d[size.to_i] << true
        swap
      end
    end
    !swap
  end
    puts (d.min_by {|k,v| k}.first.to_i..a.length - 1).size

end




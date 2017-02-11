require 'pry'
# a = []
# File.open('89.txt').map do |line|
#  a << line.split(' ').map(&:to_i)
# end

# 0.upto a.length - 1 do |lev|
#   0.upto i.length - 1 do |col|
#     a[lev - 1][col - 1] += a[lev][col], a[]

# end

# p sume


rows = File.open('89.txt').map do |line|
  line.split(' ').map(&:to_i)
end

# Starting from the bottom row of the triangle, find the maximum of each pair of
# adjacent numbers and add it to their common ancestor. As we move up the
# triangle the maximum path value will propagate up, eventually setting the
# topmost value to the answer.
(rows.count - 1).downto(1) do |level|
  (rows[level].count - 1).downto(1) do |column|
    binding.pry
    rows[level - 1][column - 1] += [rows[level][column], rows[level][column - 1]].max
  end
end

puts rows[0][0]

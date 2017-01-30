class Integer < Numeric
    def prime?
        return false if self <= 0
        2.upto (Math.sqrt(self)) do |i|
            return false if self % i == 0
        end
        true
    end
end

File.open("46.txt").each_line do |line|
  puts (2..line.to_i).to_a.select {|a| a.prime? }.join(',')
end
   
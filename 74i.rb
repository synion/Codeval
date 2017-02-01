require 'pry'
class Coin
  def coins
    @coins = [1,3,5]
  end 
end 

class Values
  attr_reader :data
  
  def initialize(data)
    @data = data
  end

  def data_to_number
    @data = self.data.to_i
  end

  def minimum_of_coin
    coin = Coin.new.coins
    self.data_to_number
    i = 0
    while self.data >= 1 do
      if self.data >= coin[2]
        i += (self.data / coin[2])
        @data %= coin[2]
      elsif self.data >= coin[1]
        i += (self.data / coin[1])
        @data %= coin[1]
      else
         i += (self.data / coin[0])
         break
      end   
    end  
    return i
  end
end

File.open('74.txt').each_line do |line|
  puts Values.new(line).minimum_of_coin
end
  
 

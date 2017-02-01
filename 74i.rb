require 'pry'
class Coin
  def coins
    coins = [1,3,5]
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

  def great_or_eq? (number)
    self.data >= coin[number]
  end

  def division(number)
    self.data / coin[number]
  end

  def minimum_of_coin
    self.data_to_number
    i = 0
    while great_or_eq?(0) do
      (i += division(2) 
      @data %= coin[2]) if great_or_eq?(2) ||
      (i += division(1) 
      @data %= coin[1]) if great_or_eq?(1) ||
      (i += division(0) 
      break)   
    end  
    return i
  end

  def to_s
    "#{self.minimum_of_coin}"
  end

  private 
    def coin
      coin = Coin.new.coins
    end  
end

File.open('74.txt').each_line do |line|
  puts Values.new(line)
end
  
 

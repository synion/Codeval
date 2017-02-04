class Register
  NAME = ['PENNY','NICKEL','DIME','QUARTER','HALF DOLLAR','ONE','TWO','FIVE','TEN','TWENTY','FIFTY','ONE HUNDRED']
  VALUE_CASH =[ 0.01, 0.05, 0.1, 0.25, 0.5, 1, 2, 5, 10, 20, 50, 100 ]
  name_to_value = {}
  0.upto name.length-1 do
    |i| name_to_value[VALUE_CASH[i]] = NAME[i]
  end

  def diff
    PP.new(cash) - CH.new(cash)
  end
end

module Sorter
  change

class PP

  attr_reader :cash

  def initialize(cash)
    @cash = cash
  end

  def change
    @cash = 2
  end
end

class CH
  attr_reader :cash
  attr
  def initialize(cash)
    @cash = cash
  end
end


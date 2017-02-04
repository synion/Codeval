require 'pry'
class List
  attr_reader :numbers

  def initialize(numbers)
    @numbers = numbers
  end

  def positiv_integer
    split_the_numbers(1).to_i
  end

  def list_of_number
    split_the_numbers(0)
  end

  def split_the_numbers(number)
    numbers.split(';')[number]
  end

  def array_of_list
    list_of_number.split(',')
  end

  def group_by_integer
    array_of_list.each_slice(positiv_integer)
  end

  def new_grups_of_integer
    group_by_integer. map{ |new_arr| (desc(new_arr) if valid?(new_arr)) || new_arr }
  end

  def valid?(arr)
    arr.length % positiv_integer  == 0
  end

  def desc(arr)
    arr.sort.reverse
  end

  def to_s
    "#{self.new_grups_of_integer.join(',')}"
  end
end
File.open('71.txt').each_line do |line|
  puts List.new(line)
end

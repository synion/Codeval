board = (1..256**2).to_a.each_slice(256).map {|arr| arr.map {|a| a = 0} }

require 'pry'
class Board
  attr_reader :board

  def initialize(board)
    @board = board
  end

  def set_row(i,x)
    self.board[i - 1] = board[i - 1].map{ |row| row = x }
  end

  def set_col(j,x)
    0.upto board.length - 1 do |i|
      self.board[i][j - 1] = x
    end
  end

  def query_row(number)
      self.board[number - 1].inject(:+)
  end

  def query_col(number)
    h = 0
    0.upto self.board.length - 1 do |i|
      h += (self.board[i][number - 1])
    end
    h
  end
end

p = Board.new(board)

File.open('87.txt').map do |line|
  arr = line.chomp.split(' ')[0]
  calc = [line.chomp.split(' ')[1].to_i,line.chomp.split(' ')[2].to_i]
    ( p.set_row( calc[0],calc[1] ) if arr == "SetRow" ) ||
    ( p.set_col( calc[0],calc[1] ) if arr == "SetCol" ) ||
    ( puts p.query_row( calc[0] ) if arr == "QueryRow" ) ||
    ( puts p.query_col( calc[0] ) if arr == "QueryCol" )
end


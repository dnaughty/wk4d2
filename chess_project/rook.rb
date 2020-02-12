require_relative 'piece.rb'
require_relative 'slideable'

class Bishop < Piece
  include Slideable

  def move_dirs
    horizontal_dirs
  end

  def symbol
  end
end
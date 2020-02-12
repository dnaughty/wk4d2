

module Slideable

  HORIZONTALL_DIRS = [
    [1, 0],
    [0, -1],
    [-1, 0],
    [0, 1]
  ]
  DIAGONAL_DIRS = [
    [1,1],
    [-1,1],
    [-1, -1],
    [1, -1]
  ]    


  def horizontal_dirs 
    HORIZONTALL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end

  def moves
    all_moves = []
    move_dirs.each do |dir|
      all_moves += grow_unblocked_moves_in_dir(dir.first, dir.last)
    end

    all_moves
  end

  def move_dirs
    raise "Move Dirs Not Implemented!"
  end

  def grow_unblocked_moves_in_dir(dx, dy)
    colors = [:B, :W]
    moves = []

    row, col = @pos

    loop do 
      row += dx
      col += dy
      pos = [row, col]
      break if @board.valid_pos?(pos)
      piece = @board[pos]
      
      if colors.include?(piece.color)
        moves << pos if piece.color != self.color
        break
      else
        moves << pos
      end
      
      # if piece.color == self.color
      #   break
      # else
      #   moves << pos
      #   break if colors.include?(piece.color)
      # end
    end

    moves
  end

end
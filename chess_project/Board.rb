 require_relative "piece"
 

class Board 

  attr_reader :board

  def initialize
    @board = Array.new(8) { Array.new(8, nil) }
    #@temp = Piece.new(:B)
  end

  def set_pieces


    [0, 1, 6, 7].each do |idx_1|
      @board[idx_1].map!.with_index do |piece, idx_2|
        piece_color = idx_1 == 0 || idx_1 == 1 ? :B : :W
        Piece.new(piece_color, self, [idx_1, idx_2])
      end
    end

    
   
    @board
    
  end


  
  
  def [](pos)
    row,col = pos
    @board[row][col]
  end
  
  def []=(pos, val)
    row,col = pos
    @board[row][col]= val
  end

  def move_piece(start_pos, end_pos)
    if self[start_pos] == nil
      raise "Not valid, Like your face!"
    end

    if self[end_pos] != nil
      raise "Not valid, Like my face!"
    end
    
    
    start_piece = self[start_pos]
    self[end_pos] = start_piece
    self[start_pos]= nil

    

  end

  def valid_pos?(pos)
    row, col = pos
    row.between?(0, 7) && col.between?(0, 7)
  end

  def add_piece(piece, pos)
  end

  def checkmate?(color)
  end

  def in_check?(color)
  end

  def find_king(color)
  end

  def pieces
  end

  def dup
  end

  def move_piece!(color, start_pos, end_pos)
  end

end




# def set_pieces(narr)
#     if narr.all? { |piece| piece == "null"}

#       arr = []

#       (0..narr.length). do |p|
#         (0..narr.length). do |p2|
#             if p <= 2  
#               arr << @board[p][p2] = temp
#             else
#               arr << narr[p]
#             end
#         end
#       end
        
#     end
#     p arr 
#   end
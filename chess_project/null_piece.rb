require_relativre 'piece'

require 'singleton'

class NullPiece < Piece

  include Singleton

def initialize

end

def symbol
  :N
end

















#end of class
end
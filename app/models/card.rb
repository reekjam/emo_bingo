class Card
  attr_accessor :board

  def initialize
    self.board = Array.new(25, nil)
    self.board[12] = 'FREE'
    bands = Band.all.collect(&:name)

    assign_tiles self.board, bands
  end

  def assign_tiles board, bands
    board.each_with_index do |tile, index|
      unless tile == 'BINGO'
        bands = bands.shuffle
        board[index] = bands.pop
      end
    end
  end

end
class BoggleBoard
  attr_accessor :board

  DICE = [ 'AAEEGN',
           'ELRTTY',
           'AOOTTW',
           'ABBJOO',
           'EHRTVW',
           'CIMOTU',
           'DISTTY',
           'EIOSST',
           'DELRVY',
           'ACHOPS',
           'HIMNQU',
           'EEINSU',
           'EEGHNW',
           'AFFKPS',
           'HLNNRZ',
           'DEILRX'  ].map(&:chars)

  def initialize
    @board = Array.new(4) {Array.new(4, '_')}
  end

  def shake!
    self.board = new_board
  end

  def new_board
    DICE.shuffle.map(&:sample).each_slice(4).to_a
  end

  def to_s
    board.inject('') {|str,row| str << "#{row.join(' ')}\n" } + "\n"
  end
end

board = BoggleBoard.new
puts board
board.shake!
puts board
board.shake!
puts board
board.shake!
puts board

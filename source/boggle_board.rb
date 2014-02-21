class BoggleBoard
  attr_accessor :board

  ALPHA = ("A".."Z").to_a

  def initialize
    @board = Array.new(4) {Array.new(4, '_')}
  end

  def shake!
    self.board = new_board
  end

  def new_board
    ALPHA.sample(16).each_slice(4).to_a
  end
  # Defining to_s on an object controls how the object is
  # represented as a string, e.g., when you pass it to puts
  #
  # Override this to print out a sensible board format so
  # you can write code like:
  #
  # board = BoggleBoard.new
  # board.shake!
  # puts board
  def to_s
    str = ''
    board.each {|row| str << "#{row.join(' ')}\n" }
    str << "\n"
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

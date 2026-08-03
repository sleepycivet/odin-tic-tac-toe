class Player
  attr_reader :name
  def initialize(name)
    @name = name
    @moves = []
  end

  def get_moves
    return @moves
  end

  def add_move(number)
    @moves.push(number)
  end

  protected
  attr_accessor :moves
end
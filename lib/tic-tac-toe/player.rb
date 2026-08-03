class Player
  def get_name
    return name.to_s
  end

  def get_moves
    return @moves
  end

  def add_move(number)
    @moves.push(number)
  end

  protected
  attr_reader :name
  attr_accessor :moves

  def initialize(name)
    @name = name
    @moves = []
  end
end
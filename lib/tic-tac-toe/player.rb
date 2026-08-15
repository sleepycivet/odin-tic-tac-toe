class Player
  def get_name
    return name.to_s
  end

  def prompt_move
    input = gets
    begin
      input > 0
    rescue
      puts ERROR_MESSAGE
    else
      if input > 0 and input < 10
        puts "You chose space number #{input}."
        add_move(input)
      else
        puts ERROR_MESSAGE
      end
    end
  end

  def get_moves
    return @moves
  end

  protected
  attr_reader :name
  attr_accessor :moves
  ERROR_MESSAGE = "Please enter a number between 1 and 9."

  def initialize(name)
    @name = name
    @moves = []
  end
  
  def add_move(number)
    @moves.push(number)
  end
end
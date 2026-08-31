class Board

  def create_board
    determine_board()
    puts " #{@board_array[0]} | #{@board_array[1]} | #{@board_array[2]}\n#{ROW_DIVIDER}\n #{@board_array[3]} | #{@board_array[4]} | #{@board_array[5]}\n#{ROW_DIVIDER}\n #{@board_array[6]} | #{@board_array[7]} | #{@board_array[8]}"
  end

  protected
  attr_accessor :board_array
  attr_reader :player_1_moves, :player_2_moves
  ROW_DIVIDER = "-----------"

  def initialize(player_1_moves, player_2_moves)
    @player_1_moves = player_1_moves
    @player_2_moves = player_2_moves
  end

  def determine_board
    @board_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

    if @player_1_moves != [] || @player_2_moves != []

      @player_1_moves.each do |item|
        @board_array.fill('X', @board_array.index(item),1)
      end

      @player_2_moves.each do |item|
        @board_array.fill('O', @board_array.index(item),1)
      end
    
    end
  end
end
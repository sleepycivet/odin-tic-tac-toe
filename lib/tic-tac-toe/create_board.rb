class CreateBoard

  def determine_board
    @board_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

    if @player_1_moves != [] && @player_2_moves != []

      @player_1_moves.each do |item|
        @board_array.fill('X', @board_array.index(item),1)
      end

      @player_2_moves.each do |item|
        @board_array.fill('O', @board_array.index(item),1)
      end

    end

    p @board_array
    return @board_array
  end

  private
  attr_accessor :board_array
  attr_reader :player_1_moves, :player_2_moves

  def initialize(player_1_moves, player_2_moves)
    @player_1_moves = player_1_moves
    @player_2_moves = player_2_moves
  end
end
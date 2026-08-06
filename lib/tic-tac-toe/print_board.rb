class PrintBoard
  ROW_DIVIDER = "-----------"

  def initialize(board_array)
    if board_array == []
      @board_spaces = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end
    puts " #{@board_spaces[0]} | #{@board_spaces[1]} | #{@board_spaces[2]}\n#{ROW_DIVIDER}\n #{@board_spaces[3]} | #{@board_spaces[4]} | #{@board_spaces[5]}\n#{ROW_DIVIDER}\n #{@board_spaces[6]} | #{@board_spaces[7]} | #{@board_spaces[8]}"
  end

  private

  attr_reader :board_spaces

  # def row_maker(array)
  #   row = array.slice!(0,3)
  #   row = " #{row.join(" | ")}"
  #   return row
  # end

end
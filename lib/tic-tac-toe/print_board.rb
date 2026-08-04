class PrintBoard
  ROW_DIVIDER = "-----------"

  def initialize(player_1_moves, player_2_moves)
    if player_1_moves == [] && player_2_moves == []
      @board_spaces = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end 
  end  

  def row1
    output = row_maker(@board_spaces)
    print output
    return output
  end

  def row_div1
    print ROW_DIVIDER
    return ROW_DIVIDER
  end

  def row2
    output = row_maker(@board_spaces)
    print output
    return output
  end

  def row_div2
    print ROW_DIVIDER
    return ROW_DIVIDER
  end

  def row3
    output = row_maker(@board_spaces)
    print output
    return output
  end

  private

  attr_reader :board_spaces

  def row_maker(array)
    row = array.slice!(0,3)
    row = " #{row.join(" | ")}"
    return row
  end

end
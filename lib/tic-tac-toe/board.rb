class Board
  def initialize(player_1_moves, player_2_moves)
  end  

  ROW_DIVIDER = "-----------"

  def row_1
    print " 1 | 2 | 3"
    return " 1 | 2 | 3"
  end

  def row_div_1
    print ROW_DIVIDER
    return ROW_DIVIDER
  end

  def row_2
    print " 4 | 5 | 6"
    return " 4 | 5 | 6"
  end

  def row_div_2
    print ROW_DIVIDER
    return ROW_DIVIDER
  end

  def row_3
    print " 7 | 8 | 9"
    return " 7 | 8 | 9"
  end
end
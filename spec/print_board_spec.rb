require './lib/tic-tac-toe/board.rb'

RSpec.describe 'Board Class' do

  player_1_moves = []
  player_2_moves = []
  test_board = PrintBoard.new(player_1_moves, player_2_moves)
  row_div = "-----------"

  expected_row_1 = " 1 | 2 | 3"
  expected_row_div_1 = row_div
  expected_row_2 = " 4 | 5 | 6"
  expected_row_div_2 = row_div
  expected_row_3 = " 7 | 8 | 9"
  describe 'empty board' do
    it 'prints row 1' do
      expect(test_board.row1).to eq(expected_row_1)
    end
    it 'prints row divider 1' do
      expect(test_board.row_div1).to eq(expected_row_div_1)
    end
    it 'prints row 2' do 
      expect(test_board.row2).to eq(expected_row_2)
    end
    it 'prints row divider 2' do 
      expect(test_board.row_div2).to eq(expected_row_div_2)
    end
    it 'prints row 3' do
      expect(test_board.row3).to eq(expected_row_3)
    end
  end
end
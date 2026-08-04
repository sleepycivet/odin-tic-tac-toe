require './lib/tic-tac-toe/print_board.rb'
RSpec.describe 'PrintBoard Class' do
  row_div = "-----------"
  describe 'empty board' do
    board_array = []
    test_board = PrintBoard.new(board_array)

    expected_row_1 = " 1 | 2 | 3"
    expected_row_div_1 = row_div
    expected_row_2 = " 4 | 5 | 6"
    expected_row_div_2 = row_div
    expected_row_3 = " 7 | 8 | 9"
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
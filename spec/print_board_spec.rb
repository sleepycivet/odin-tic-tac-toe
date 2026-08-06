require './lib/tic-tac-toe/print_board.rb'
RSpec.describe 'PrintBoard Class' do
  row_div = "-----------"
  describe 'empty board' do
    board_array = []
    expected_output = " 1 | 2 | 3\n#{row_div}\n 4 | 5 | 6\n#{row_div}\n 7 | 8 | 9\n"
    it 'prints a blank board' do
      expect{PrintBoard.new(board_array)}.to output(expected_output).to_stdout
    end
  end
end
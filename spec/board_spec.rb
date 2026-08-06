require './lib/tic-tac-toe/board.rb'
RSpec.describe 'Board Class' do
  row_div = "-----------"
  describe 'empty board' do
    test_board = Board.new([],[])
    expected_output = " 1 | 2 | 3\n#{row_div}\n 4 | 5 | 6\n#{row_div}\n 7 | 8 | 9\n"
    it 'prints a blank board' do
      expect{test_board.create_board}.to output(expected_output).to_stdout
    end
  end
  describe 'basic player moves' do
    player_1_moves = [1,4,5] # X
    player_2_moves = [8,3,6] # O
    # expected_output = ['X',2,'O', 'X','X','O',7,'O',9]
    expected_output = " X | 2 | O\n#{row_div}\n X | X | O\n#{row_div}\n 7 | O | 9\n"
    test_board = Board.new(player_1_moves, player_2_moves)
    it 'returns array with player moves mixed in' do
      expect{test_board.create_board}.to output(expected_output).to_stdout
    end
  end
end
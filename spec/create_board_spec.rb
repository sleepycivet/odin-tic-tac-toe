require './lib/tic-tac-toe/create_board.rb'
RSpec.describe 'CreateBoard Class' do
  empty_board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  describe 'no player moves' do
    player_1_moves = []
    player_2_moves = []
    test_board = CreateBoard.new(player_1_moves, player_2_moves)
    it 'returns all the spaces as numbers' do
      expect(test_board.determine_board).to eq(empty_board)
    end
  end
  describe 'basic player moves' do
    player_1_moves = [1,4,5] # X
    player_2_moves = [8,3,6] # O
    expected_output = ['X',2,'O', 'X','X','O',7,'O',9]
    test_board = CreateBoard.new(player_1_moves, player_2_moves)
    it 'returns array with player moves mixed in' do
      expect(test_board.determine_board).to eq(expected_output)
    end
  end
end
require './lib/tic_tac_toe.rb'
RSpec.describe 'Tic-Tac-Toe Game' do
  describe 'initialize a game' do
    test_game = Game.new
    
    player_1_name = 'Cassie'
    player_2_name = 'Aelin'
    it 'displays player names' do
      allow_any_instance_of(Kernel).to receive(:gets).and_return(player_1_name,player_2_name)
      expected_output = "Welcome to Tic-Tac-Toe.\nPlease enter a name for player 1.\nPlease enter a name for player 2.\nPlayer 1 is #{player_1_name}.\nPlayer 2 is #{player_2_name}.\n"
      # expect{Game.new}.to output(expected_output).to_stdout # can't figure out how to test this method when it's part of initialize so I had to break it out into a function that's callable by itself (hence #new_game)
      expect{test_game.get_players()}.to output(expected_output).to_stdout
    end
  end
  describe 'determine if a move set is a win' do
    game = Game.new
    # Horizontal: [1,2,3] [4,5,6] [7,8,9]
    # Vertical: [1,4,7] [2,5,8] [3,6,9]
    # Diagonal: [1,5,9] [3,5,7]
    winning_move_array = [1,3,5,2]
    losing_move_array = [1,9,3]
    it 'returns true when it matches winning combo' do
      expect(game.is_win?(winning_move_array)).to eq(true)
    end
    it 'returns false when it does not match winning combo' do
      expect(game.is_win?(losing_move_array)).to eq(false)
    end
  end
end
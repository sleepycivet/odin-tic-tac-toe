require './lib/tic-tac-toe/player.rb'

RSpec.describe 'Player Class' do
  describe 'check init data' do
    test_player = Player.new('Bob Ross')
    expected_name = 'Bob Ross'
    expected_moves = []
    it 'has a name' do
      expect(test_player.name).to eq(expected_name)
    end

    it 'has an array for player moves' do
      expect(test_player.get_moves).to eq(expected_moves)
    end
  end
end
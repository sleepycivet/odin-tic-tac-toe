require './lib/tic_tac_toe.rb'
RSpec.describe 'Tic-Tac-Toe Game' do
  describe 'comparing with winning combo' do
    game = Game.new
    # allow_any_instance_of(Kernel).to receive(:gets).and_return('Cassie')
    # allow_any_instance_of(Kernel).to receive(:gets).and_return('Aelin')
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
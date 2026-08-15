require './lib/tic-tac-toe/player.rb'

RSpec.describe 'Player class inputs' do
  describe 'check init data' do
    test_player = Player.new('Bob Ross')
    expected_name = 'Bob Ross'
    expected_moves = []
    it 'has a name' do
      expect(test_player.get_name).to eq(expected_name)
    end

    it 'has an array for player moves' do
      expect(test_player.get_moves).to eq(expected_moves)
    end

    xit 'adds a number to the moves array' do # it's a protecte method now so skipping. Plus, it's test below.
      test_player.add_move(8)
      expect(test_player.get_moves).to eq([8])
    end
  end
  describe 'erroneous player input' do
    test_player = Player.new('Mr. Rogers')
    test_input1 = "acorn"
    test_input2 = 12345
    expected_output = "Please enter a number between 1 and 9.\n"
    it 'returns an error message when the user enters a word' do
      allow_any_instance_of(Kernel).to receive(:gets).and_return(test_input1)
      expect{test_player.prompt_move()}.to output(expected_output).to_stdout
    end
    it "returns an error message when the user enters a number greater than 9" do
      allow_any_instance_of(Kernel).to receive(:gets).and_return(test_input2)
      expect{test_player.prompt_move()}.to output(expected_output).to_stdout
    end
  end
  describe 'correct player input (a number between 1 and 9)' do
    test_player = Player.new('Ruby Nyx')
    test_input = 3
    expected_output = "You chose space number #{test_input}.\n"
    it 'returns a confirmation of the move' do
      allow_any_instance_of(Kernel).to receive(:gets).and_return(test_input)
      expect{test_player.prompt_move()}.to output(expected_output).to_stdout
    end
  end
end

RSpec.describe 'Player class mechanics' do
  describe 'add to moves to a single player' do
    test_player = Player.new('Calaena')
    test_move = 4
    expected_output = [4]
    it 'returns moves array' do
      allow_any_instance_of(Kernel).to receive(:gets).and_return(test_move)
      test_player.prompt_move()
      expect(test_player.get_moves).to eq(expected_output)
    end
  end
  describe 'mock game between two players' do
    player_1 = Player.new('Archer')
    player_1_moves = [1, 5, 8]
    player_2 = Player.new('Lysandra')
    player_2_moves = [2, 4]
    # X | O | 3
    # O | X | 6
    # 7 | X | 9
    # [1, 5, 8]
    # [2, 4]
    it 'returns player 1 and player 2 moves arrays correctly' do
      allow_any_instance_of(Kernel).to receive(:gets).and_return(player_1_moves.shift)
      player_1.prompt_move()

      allow_any_instance_of(Kernel).to receive(:gets).and_return(player_2_moves.shift)
      player_2.prompt_move()

      allow_any_instance_of(Kernel).to receive(:gets).and_return(player_1_moves.shift)
      player_1.prompt_move()

      allow_any_instance_of(Kernel).to receive(:gets).and_return(player_2_moves.shift)
      player_2.prompt_move()

      allow_any_instance_of(Kernel).to receive(:gets).and_return(player_1_moves.shift)
      player_1.prompt_move()

      expect(player_1.get_moves).to eq([1,5,8])
      expect(player_2.get_moves).to eq([2,4])
    end
  end
end
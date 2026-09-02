require_relative 'tic-tac-toe/board'
require_relative 'tic-tac-toe/player'

class Game
  def start_game
    if @active_game == false
      get_players()
      Board.new(@player_1.get_moves, @player_2.get_moves).create_board()
      @active_game = true

      while @active_game == true
        if @player_1.get_moves.length == @player_2.get_moves.length
          puts "#{@player_1.get_name}, enter a number on the board to complete your move."

          player_1.add_move(self.prompt_move())
          is_tie?
          if is_win?(@player_1.get_moves)
            puts "#{@player_1.get_name} wins!"
          end
        else
          puts "#{@player_2.get_name}, enter a number on the board to complete your move."

          player_2.add_move(self.prompt_move())
          is_tie?
          if is_win?(@player_2.get_moves)
            puts "#{@player_2.get_name} wins!"
          end
        end
        Board.new(@player_1.get_moves, @player_2.get_moves).create_board()
      end
    end
  end

  protected
  attr_accessor :player_1, :player_2, :active_game

  def initialize
    @active_game = false
  end

  def calc_remaining_moves(player_1_array, player_2_array)
    board_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    player_1_array.each do |item|
      board_array.delete(item)
    end
    player_2_array.each do |item|
      board_array.delete(item)
    end
    return board_array
  end

  def prompt_move
    error_message = "ERROR: Not a valid input. Please enter a number between 1 and 9."
    input = gets.to_i
    begin
      input > 0
    rescue
      puts error_message
    else
      if input > 0 and input < 10
        if @player_1.get_moves.include?(input) || @player_2.get_moves.include?(input)
          puts "Another player has already gone in that area. Pick a cell with a number."
        else
          return input
        end
      end
    end
  end

  def is_win?(move_array)
    won = false
    winning_combos = [
      [1,2,3], [4,5,6], [7,8,9], # horizontal
      [1,4,7], [2,5,8], [3,6,9], # vertical
      [1,5,9], [3,5,7] # diagonal
    ]

    while won == false && winning_combos.length > 0 do
      combo_match = true
      current_combo = winning_combos.shift
      current_combo.each do |num|
        if move_array.include?(num) == false
          combo_match = false
        end
      end
      if combo_match == true
        won = true
        @active_game = false
      end
    end

    return won
  end

  def is_tie?
    winning_combos = [
      [1,2,3], [4,5,6], [7,8,9], # horizontal
      [1,4,7], [2,5,8], [3,6,9], # vertical
      [1,5,9], [3,5,7] # diagonal
    ]

    possible_win = false

    player_1_possible_moves = @player_1.get_moves + calc_remaining_moves(@player_1.get_moves, @player_2.get_moves)
    player_2_possible_moves = @player_2.get_moves + calc_remaining_moves(@player_1.get_moves, @player_2.get_moves)

    while possible_win == false && winning_combos.length > 0 do 
      combo = winning_combos.shift()

      if combo.difference(player_1_possible_moves) == []
        possible_win = true
      end

      if combo.difference(player_2_possible_moves) == []
        possible_win = true
      end
    end

    if possible_win == false
      puts "It's a tie! There are no ways for any player to have a winning move."
      @active_game = false
    end
  end

  def get_players
    puts "Welcome to Tic-Tac-Toe."
    puts "Please enter a name for player 1."
    @player_1 = Player.new(gets.chomp.to_s)
    puts "Please enter a name for player 2."
    @player_2 = Player.new(gets.chomp.to_s)
  end
end

# Set up board DONE
# 1 | 2 | 3
# ----------
# 4 | 5 | 6
# ----------
# 7 | 8 | 9
# Maybe we'll refactor and combine PrintBoard and CreateBoard back into one Board class

# Take user inputs
# Begin, rescue, else for checking user input
# As an array and check them against the answers below
# Player
# .prompt input (because we'll be storing their moves as part of their data)
# @moves
# @name

# Determine winner
# Horizontal: [1,2,3] [4,5,6] [7,8,9]
# Vertical: [1,4,7] [2,5,8] [3,6,9]
# Diagonal: [1,5,9] [3,5,7]

# Class Board ([player 1 moves], [player 2 moves])
# #create_board DONE
# TODO:// Hook up create_board to print_board

# class Game
# .new
# .determine_winner? ([player moves])
#     Only have to check the moves of the last person who went to see if they won
# .get_player_move

# Rules
#   - 100 lines per class
#   - 5 lines per method
#   - 3 parameters per method

# Notes
# - Classes for maintaining state
# - Methods for actions
# - Modules for actions to be used in multiple places
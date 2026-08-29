require_relative 'tic-tac-toe/board'
require_relative 'tic-tac-toe/player'

class Game
  
  # Because I couldn't figure out how to test putting get_players in initialize (;_; which would have been the ideal situation) I am making a separate new_game function that must be called...
  # I put an if statement in there so that people can't call #new_game while there is an active game but I'll have to see if the tests still pass

  def new_game
    if @active_game == false
      get_players()
      Board.new([],[]).create_board()
      @active_game = true
    else
      puts "There is currently an active game and a new game cannot be started."
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

  # def display_players
  #   puts "Player 1 is #{@player_1.get_name}."
  #   # puts "Player 2 is #{@player_2.get_name}."
  # end

  def get_players
    puts "Welcome to Tic-Tac-Toe."
    puts "Please enter a name for player 1."
    player_1 = Player.new(gets.chomp.to_s)
    puts "Please enter a name for player 2."
    player_2 = Player.new(gets.chomp.to_s)
    puts "Player 1 is #{player_1.get_name}."
    puts "Player 2 is #{player_2.get_name}."
  end

  protected
  attr_accessor :player_1, :player_2, :active_game

  def initialize
    @active_game = false
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
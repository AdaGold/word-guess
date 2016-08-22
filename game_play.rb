# @TODO -- define win (incorporate logic into play_game, add a method for game_won_sequence?)

require_relative 'word_guess'
require_relative 'art_work'
require_relative 'game_board'

class GamePlay
  attr_accessor :my_word_guess

  def initialize
    @my_word_guess = WordGuess.new
    @my_game_board = GameBoard.new(@my_word_guess.the_word)
    @my_artwork = ArtWork.new
  end

# @TODO need to incorporate logic for win
  def play_game
    countdown = @my_word_guess.countdown
    while countdown > 0
      puts countdown.to_s + " turns remaining" # for debugging
      play_turn(countdown) # calls word_logic so it changes countdown
      countdown = @my_word_guess.countdown
    end
    return game_over_sequence(countdown)
  end

  def play_turn(countdown)
    @my_artwork.print_ballons(countdown)
    @my_game_board.print_dash_line
    current_guess = @my_word_guess.word_logic
    @my_game_board.print_game_board(current_guess)
  end

# not used yet
  def game_over_sequence(countdown)
    @my_artwork.print_ballons(countdown)
  end

end # GamePlay

play = GamePlay.new
play.play_game

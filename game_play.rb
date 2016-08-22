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
    while @my_word_guess.countdown > 0
      puts @my_word_guess.countdown.to_s + " turns remaining" # for debugging
      play_turn
    end
    game_over_sequence
  end

  def play_turn
    @my_artwork.print_ballons(@my_word_guess.countdown)
    @my_game_board.print_dash_line
    @my_game_board.print_game_board(@my_word_guess.word_logic)
  end

  def game_over_sequence
    @my_artwork.print_ballons(@my_word_guess.countdown)
  end

end # GamePlay

play = GamePlay.new
play.play_game

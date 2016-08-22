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
    current_word_count = @my_word_guess.correct_letters_left_count
    while countdown > 0 && current_word_count > 0
      puts countdown.to_s + " turns remaining" # for debugging
      play_turn(countdown, current_word_count) # calls word_logic so it changes countdown
      countdown = @my_word_guess.countdown
      current_word_count = @my_word_guess.correct_letters_left_count
    end
    return end_game_sequence(countdown, current_word_count)
  end

  def play_turn(countdown, current_word_count)
    @my_artwork.print_balloons(countdown)
    @my_game_board.print_dash_line
    current_guess = @my_word_guess.word_logic
    @my_game_board.print_game_board(current_guess)
  end

# not used yet
  def end_game_sequence(fail_count,success_count)
    if fail_count == 0
      @my_artwork.print_balloons(0) # game over banner
      exit
    elsif success_count == 0
      #win!
      puts "you win the game"
      exit
    else
      puts "Not a winner, what's up?"
      exit
    end #if

  end #end_game_sequence

end # GamePlay

play = GamePlay.new
play.play_game

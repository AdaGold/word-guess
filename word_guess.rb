class WordGuess
  #  attr_accessor

  def initialize
    @the_words = ["CAT", "HOT", "TAP"]
  #  @letters = []
  end

  def user_input
    print "Guess a letter: "
    letter_guess = gets.chomp.upcase
    return letter_guess
  end

def word_logic
  letter_guess = user_input
  return letter_guess
end

end #WordGuess
class GameBoard
  def initialize
  end

  def print_game_board(current_letter)
    puts "Amazing answer. You are guessing: #{current_letter}"
  end
end #GameBoard

my_word_guess = WordGuess.new
word_guess = my_word_guess.word_logic
my_game_board = GameBoard.new
my_game_board.print_game_board(word_guess)

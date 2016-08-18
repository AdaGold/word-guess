class WordGuess
  #  attr_accessor

  def initialize
    the_words = ["CAT", "HOT", "TAP"]
    @the_word = the_words.sample(1)[0]
    @word_by_letter = @the_word.split('')
    #  @letters = []
  end

  def get_user_input
    print "Guess a letter: "
    letter_guess = gets.chomp.upcase
    # TO DO: Add verification of single letter input
    return letter_guess
  end

  def word_logic
    letter_guess = get_user_input
    if @word_by_letter.include?(letter_guess)
      good_letter_locs = []
      @word_by_letter.each_with_index do |letter, i|
        if letter == letter_guess
          good_letter_locs << [letter, i]
        end
      end
      puts "Good letters: " + good_letter_locs.to_s
      # call game_board.success(letter_guess, )

    else
      bad_letters = []
      bad_letters << letter_guess
      puts "Bad letters: " + bad_letters.to_s
      # call game_board.fail(letter_guess)
    end
  end

end #WordGuess

class GameBoard
  def initialize
  end

  def success

  end

  def print_game_board(current_letter)
    puts "Amazing answer. You are guessing: #{current_letter}"
  end
end #GameBoard

# my_word_guess = WordGuess.new
# word_guess = my_word_guess.word_logic
# my_game_board = GameBoard.new
# my_game_board.print_game_board(word_guess)

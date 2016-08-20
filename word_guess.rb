#require_relative 'game_board'

class WordGuess
  #  attr_accessor

  def initialize
    the_words = ["CAT", "HOT", "TAP"]
    @the_word = the_words.sample(1)[0]
    @word_by_letter = @the_word.split('')
    @bad_letters = []
    puts "The word is #{ @the_word }" # for testing
        #  @letters = []
  end

  def get_user_input
    begin
      print "Guess a letter: "
      letter_guess = gets.chomp.upcase
    end until letter_guess.length == 1
    return letter_guess
  end

  def word_logic
    letter_guess = get_user_input
    if @word_by_letter.include?(letter_guess)
      good_letters_at_index_loc = []
      @word_by_letter.each_with_index do |letter, i|
        if letter == letter_guess
          good_letters_at_index_loc << [letter, i]
        end
      end
      puts "Good letters: " + good_letters_at_index_loc.to_s # #for GameBoard/debugging both
      # send game_board.success(letter_guess, )
      return good_letters_at_index_loc
    else
      @bad_letters << letter_guess
      puts "Bad letters: " + @bad_letters.to_s # for GameBoard debugging/both
      return @bad_letters # first forgot this return: caused errors in game_board
      # send game_board.fail(letter_guess)
      # will change bad_letters
    end
  end

end #WordGuess

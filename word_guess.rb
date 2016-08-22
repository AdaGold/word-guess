#require_relative 'game_board'

class WordGuess
  attr_accessor :letter_guess, :countdown, :the_word, :correct_letters_left_count

  def initialize
    the_words = ["KITTENS"] #, "HOT", "TAP"]
    # @TODO add more complicated/longer words
    @the_word = the_words.sample(1)[0]
    @correct_letters_left_count = @the_word.length # countdown for success
    @word_by_letter = @the_word.split('')
    @bad_letters = []
    @countdown = 5 #countdown for fail
    puts "The word is #{ @the_word }" # for testing
        #  @letters = []
  end

  def get_user_input
    begin
      print "Guess a letter: "
      letter_guess = gets.chomp.upcase
    end until letter_guess.length == 1
    # @TODO verify input is a letter (rather than number, etc)
    return letter_guess
  end

  def word_logic
    @letter_guess = get_user_input
    if @word_by_letter.include?(@letter_guess)
      good_letters_at_index_loc = []
      @word_by_letter.each_with_index do |letter, i|
        if letter == @letter_guess
          good_letters_at_index_loc << [letter, i]
          @correct_letters_left_count -=1
        end
      end
      puts "Good letters: " + good_letters_at_index_loc.to_s # #for GameBoard/debugging both
      # send game_board.success(letter_guess, )
      return good_letters_at_index_loc
    else
      @bad_letters << @letter_guess
      puts "Bad letters: " + @bad_letters.to_s # for GameBoard debugging/both
      @countdown -= 1
      return @bad_letters
      # send game_board.fail(letter_guess)
      # will change bad_letters
    end
  end

end #WordGuess

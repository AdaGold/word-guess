#require 'terminal-table'
require_relative 'word_guess'

class GameBoard
  def initialize
    @letter_dash = []
    @the_word = ""
    @dash_array = Array.new(@the_word.length, "_ ")
  end

  def success(good_letters_locs) # needs the array of elements including letters & index
    puts
  end

  def print_game_board(letters) # the good or bad letters arrays
    puts "Amazing answer. You are guessing: #{letters[0][0].to_s}" #for testing
    dash_lines(letters) # returns dash_line results
  end

# @TODO
  def dash_lines(letters)
    if letters[0].is_a?(Array) #good letters, letters.last[0] is the current input
      puts "The letter is correct"
      letters.each do |letter, index_loc|
        # replace the string "_ " with letter at index_loc
      end #do
    elsif letters[0].is_a?(String) #bad letters, letters.last is the current input
      #countdown -=1 ?
      puts "The letter is incorrect"
    else
      puts "There is an error in the letter counting logic"
    end

  end #dash_lines
  
  # def dash_line(good_letters_locs) #array of arrays
  #   good_letters_locs = @good_letters_with_good_index
  #   @dash_array.each do |dash|
  #     @good_letters_with_good_index.each_with_index do |letter, i|
  #     # pull out each array_element [0]: the letter and [1]: the original index
  #     # with i we w
  #   #end #each
  # end

end #GameBoard

my_word_guess = WordGuess.new
word_guess = my_word_guess.word_logic
my_game_board = GameBoard.new
my_game_board.print_game_board(word_guess)

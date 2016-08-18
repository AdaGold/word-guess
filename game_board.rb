require 'terminal-table'

class GameBoard
  def initialize
    @letter_dash = []
    @the_word = ""
    @dash_array = Array.new(@the_word.length, "_ ")
  end

  def success(good_letters_locs) # needs the array of elements including letters & index
    puts
  end

  def print_game_board(current_letter)
    puts "Amazing answer. You are guessing: #{current_letter}"
  end

# @TODO
  # def dash_line(good_letters_locs) #array of arrays
  #   good_letters_locs = @good_letters_with_good_index
  #   @dash_array.each do |dash|
  #     @good_letters_with_good_index.each_with_index do |letter, i|
  #     # pull out each array_element [0]: the letter and [1]: the original index
  #     # with i we w
  #
  #
  #     # dash.each do |letter|
  #     #   dash_line = dash_line + "#{ dash[i]} "
  #
  #   #end #each
  # end

end #GameBoard

# my_word_guess = WordGuess.new
# word_guess = my_word_guess.word_logic
# my_game_board = GameBoard.new
# my_game_board.print_game_board(word_guess)

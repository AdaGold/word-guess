# #require 'terminal-table'
# require_relative 'word_guess'
# require_relative 'art_work'
# require_relative 'game_play'

class GameBoard
  def initialize(word)
    @dash_array = Array.new(word.length, "_")
  end

# @TODO - this method is unused. Remove it? or Use it?
  def success(good_letters_locs) # needs the array of elements including letters & index
    puts
  end

  def print_game_board(letters) # the good or bad letters arrays
    puts "You are guessing: #{letters[0][0].to_s}" #for testing
    puts "Good/bad letters array is: #{ letters }"
    return dash_array_logic(letters) # returns dash_line results
  end

  def dash_array_logic(letters)
    if letters[0].is_a?(Array) #good letters, letters.last[0] is the current input
      puts "The letter is correct"
      return update_dash_array(letters)
        # replace the string "_ " with letter at index_loc
    elsif letters[0].is_a?(String) #bad letters, letters.last is the current input
      puts "The letter is incorrect"
    else
      puts "There is an error in the letter counting logic"
    end
  end #dash_array_logic

  def update_dash_array(letters) #array of good letter arrays
    # @good_letters_at_index_loc = letters
    letters.each do |good_letter_array|
      @dash_array[good_letter_array[1]] = good_letter_array[0]
    end
  end

  def print_dash_line
    print "Word: "
    @dash_array.each { |item| print item + " " }
    puts
  end

end #GameBoard

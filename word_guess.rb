class WordGuess
  attr_accessor :words, :target_word_guess, :correct_guesses, :incorrect_guesses, :target_array_form, :dash_line

  def initialize
    @words =  ["JOY", "SAD", "HAPPY", "FACE"]
    @target_word_guess = ""
    @target_array_form = nil
    @correct_guesses = []
    @incorrect_guesses = []
    @dash_line = nil
  end

  def selection
    index_choice = rand(@words.length  - 1)
    @target_word_guess = @words[index_choice]
    @target_array_form = @target_word_guess.split("")
    print @target_word_guess
  end

  def create_dash_line
    number_dashes = @target_word_guess.length
    dash_line = "-" * number_dashes
    @dash_line = dash_line.chars.to_a
    return @dash_line
  end

  def guess
    your_guess = gets.chomp.upcase
    # until your_guess.length == 1 && your_guess.include?("A..Z")
    #   puts "Oops"
    #   your_guess = gets.chomp.upcase
    # end

    if @target_word_guess.include?(your_guess)
      @correct_guesses<<your_guess
      @target_array_form.each_with_index do |char, index|
          if your_guess == char
              @dash_line[index].replace(char)
          end
      end
    else
      @incorrect_guesses<<your_guess
    end
    print @dash_line
    print @correct_guesses
  end


# will need to come back to this method, it's looping in a strange way right now...

  # def done?
  #   @target_array_form.each do |let|
  #     if !@correct_guesses.include?(let)
  #       return false
  #     end
  #   end
  #   return true
  # end

  def graphic
    puts "(@)(@)(@)(@)(@)\n,\\, \\, |,/, /,\n     _\\|/_\n    |_____|\n     |   |\n     |___|"
  end

  def testing_guesses
    puts @correct_guesses
  end

end
test = WordGuess.new

puts "Welcome to Guess Our Words!"
puts test.selection

puts "Please guess our word represented below by the dashed line. You can guess one letter at a time. You will have 5 incorrect guesses before the game is over. One 'petal' will be removed after each incorrect guess.\n\n\n"

print test.create_dash_line

puts "\n\n"
test.graphic

test.guess
#test.testing_guesses

# until test.done? == true
#   test.guess
# end
#
# test.testing_guesses

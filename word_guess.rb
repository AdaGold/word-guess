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
    else
      @incorrect_guesses<<your_guess
    end
  end

  def done?
    @target_array_form.each do |let|
      if !@correct_guesses.include?(let)
        return false
      end
    end
    return true
  end

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

test.create_dash_line
puts test.dash_line[0]

test.graphic

test.guess
test.testing_guesses

until test.done? == true
  test.guess
end

test.testing_guesses

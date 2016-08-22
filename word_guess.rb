class WordGuess
  attr_accessor :words, :target_word_guess, :correct_guesses, :incorrect_guesses, :target_array_form, :dash_line, :petal_art

  def initialize
    @words =  ["JOY", "SAD", "HAPPY", "FACE"]
    @target_word_guess = ""
    @target_array_form = nil
    @correct_guesses = []
    @incorrect_guesses = []
    @dash_line = nil
    @petal_art = ""
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

    print "\nType your guess: "
    your_guess = gets.chomp.upcase
    puts "\n"
    puts "*" * 50
    puts "\n"
    if @target_word_guess.include?(your_guess)
      @correct_guesses<<your_guess
      @target_array_form.each_with_index do |char, index|
        if your_guess == char
          @dash_line[index].replace(char)
        end
      end
      puts @petal_art
    else
      @incorrect_guesses<<your_guess
      @petal_art.slice!(0,3)
      puts @petal_art
      # puts @petal_art.sub!("(@)", "")
    end
    puts "Here is your target word: "
    print @dash_line
    puts "\n"
    puts"Here are your incorrect guesses so far... \n"
    print @incorrect_guesses
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
    @petal_art = "(@)(@)(@)(@)(@)\n,\\, \\, |,/, /,\n     _\\|/_\n    |_____|\n     |   |\n     |___|"
    return @petal_art
  end

  def testing_guesses
    puts @correct_guesses
  end

  def conclusion
    until done? == true || @incorrect_guesses.length == 5
      guess
    end
    if @incorrect_guesses.length == 5
      puts" Oops you lose, nice try!"
    elsif done? == true
      puts "Good job, you win!"
    end
  end
end

test = WordGuess.new

puts "Welcome to Guess Our Words!"
puts test.selection

puts "Please guess our word represented below by the dashed line. You can guess one letter at a time. You will have 5 incorrect guesses before the game is over. One 'petal' will be removed after each incorrect guess.\n\n\n"

print test.create_dash_line

puts "\n\n"
puts test.graphic

test.guess

test.conclusion


# test.testing_guesses

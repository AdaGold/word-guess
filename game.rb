require_relative 'levels.rb'

class Game
  attr_accessor :word, :guessed_word, :remaining_guesses, :wrong_letters

  def initialize(level)
    @word = Levels.new(level).difficulty
    @guessed_word = ["_"] * @word.length
    @remaining_guesses = 5
    @wrong_letters = []
  end

  def is_in_word (letter)
    word_array = @word.split("")
    word_array.each_with_index do |char, i|
      if letter == char
        @guessed_word[i] = char
      end
    end
    if @word.include?(letter) == false
      @remaining_guesses -= 1
      @wrong_letters << letter
    end

    return @guessed_word
  end

  def full_word(word)
    if word != @word
      @remaining_guesses -=1
      @wrong_letters << word
    else
      @guessed_word=word
    end
    return @guessed_word
  end

  def display_progress
    display = ""
    @guessed_word.each do |char|
      display += char + " "
    end
    return display
  end

  def win?
    if @guessed_word.include?("_")
      return false
    else
      return true
    end
  end

  def flowers
    puts
    case @remaining_guesses

    when 5
      puts "(@)(@)(@)(@)(@)"
    when 4
      puts "(@)(@)(@)(@)"
    when 3
      puts "   (@)(@)(@)"
    when 2
      puts "   (@)   (@)"
    when 1
      puts "   (@)"
    when 0
      puts
    else
      puts "How did this get messed up!?"
    end

    puts '  ,\,\,|,/,/,'
    puts '     _\|/_'
    puts '    |_____|'
    puts '     |   |'
    puts "     |___|"
  end
end

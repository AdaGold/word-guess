require_relative 'levels.rb'
require_relative 'flower.rb'

class Game
  attr_accessor :word, :guessed_word, :remaining_guesses, :wrong_letters

  def initialize(level)
    @word = Levels.new(level).difficulty
    @guessed_word = ["_"] * @word.length

      if level == "a"
        @remaining_guesses = 7
      elsif level == "b"
        @remaining_guesses = 6
      elsif level == "c"
        @remaining_guesses = 5
      end

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
    Flower.new(@remaining_guesses).flower
  end

end

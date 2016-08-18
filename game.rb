class Game
  attr_accessor :word, :guessed_word, :remaining_guesses

  def initialize
    @word = "panda"
    @guessed_word = ["_"] * @word.length
    @remaining_guesses = 5
    print @guessed_word
    puts "Welcome to word-guess!"



  end

  def is_in_word (letter)
    word_array = @word.split("")
    word_array.each_with_index do |char, i|
      if letter == char
        @guessed_word[i] = char
      else
        @remaining_guesses -= 1
      end
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






end

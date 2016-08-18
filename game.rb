class Game
  attr_accessor :word, :guessed_word

  def initialize
    @word = "panda"
    @guessed_word = ["_"] * @word.length
    print @guessed_word


  end

  def is_in_word (letter)
    word_array = @word.split("")
    word_array.each_with_index do |char, i|
      if letter == char
        @guessed_word[i] = char
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

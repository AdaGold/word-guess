class WordGuess
  attr_accessor :words, :target_word_guess

  def initialize
    @words =  ["spaghetti", "stupendous", "happy", "lingual"]
    @target_word_guess = ""
  end

  def selection
    index_choice = rand(@words.length  - 1)
    @target_word_guess = @words[index_choice]
  end

  def create_dash_line
    number_dashes = @target_word_guess.length
    dash_line = "-" * number_dashes
    return dash_line
  end

  def graphic
  puts "(@)(@)(@)(@)(@)\n  \\, \\, |, /, /,\n   _\\|/_\n  |_____|\n   |   |\n   |___|"
  end

end
  test = WordGuess.new

puts test.selection

puts test.create_dash_line

test.graphic

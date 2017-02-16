

class Word_guess
  attr_accessor :word, :board, :letters_guessed, :max_guesses

  def initialize
    puts "new game initialized!"
    @word = "paper"
    @board = Array.new(word.length) { |i| i = "_" }
    # @art = './turtle.txt'
    # @art = Art.new
    @letters_guessed = [ ]
    @max_guesses = 12
  end

end

class Art
end

new_game = Word_guess.new

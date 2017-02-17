

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

  def main
    puts "Welcome to Cythina & Maria's Word Guessing Game"
    puts "-" * 60
    puts "Guess the word before the turtle disapears"
    # need to write the print_art method - will be in the class Art
    # print_art
    # puts print_board
    print_board
    get_guess
  end

  def print_board
    return "Word: #{@board.join(" ")}"
  end

  def get_guess
    puts "What letter would you like to guess? "
    guess = gets.chomp.upcase
    return guess
  end

end

class Art
end

new_game = Word_guess.new
print new_game.main
puts ""

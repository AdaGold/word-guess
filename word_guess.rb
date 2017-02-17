

class Word_guess
  attr_accessor :word, :board, :letters_guessed, :max_guesses

  def initialize
    puts "new game initialized!"
    @word = "PAPER"
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
    puts "Here are your previous guesses: #{@letters_guess.join(", ") rescue ""}"
    # need to write the print_art method - will be in the class Art
    # print_art
    puts print_board
    #set a local variable guess to get_guess (which returns the letter entered by user)
    guess = get_guess
    #have to send the local variable guess to method check_guess so this method has guess
    check_guess(guess)
    store_guess(guess)
  end

  def print_board
    return "Word: #{@board.join(" ")}"
  end

  def get_guess
    puts "What letter would you like to guess? "
    return gets.chomp.upcase
  end

  def store_guess(guess)
    @letters_guessed << guess
  end

  def check_guess(guess)
    # needs to check if the letter guessed matches a letter in @word
    #board = [_ _ _ _ _] vs. word="PAPER" would word = [P, A, P, E, R]
    #array method .split(TELL ME WHERE TO SPLIT) - turns a string into an array
    #use replace if index of each matches
    final_board = @word.split("")
    # if guess is included in final board / word
    #we need the guess to show up on board in the correct spot
    final_board.each_index do |i|
      if final_board[i] == guess
        @board[i] = guess
      end
    end
    print @board
    puts
  end

end

class Art
end

new_game = Word_guess.new
print new_game.main
puts ""

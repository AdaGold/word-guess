
class Char_Check
  attr_accessor :char

  def initialize (char)
    @char = char
    @attempt = []
    @hidden = ["_", "_", "_", "_", "_", "_", "_", "_"]
    @secret_word = ["L", "O", "V", "E", "L", "A", "C", "E"]
    @letter_placement = []
  end

  # This method should receive user input
  def receive_input
    puts "Please enter a letter to guess the secret word!"
    @char = gets.chomp.upcase!
    return @char
  end

  def eval_input
    @secret_word.each_with_index do |char, i|
      if @secret_word.include?(@char)
        @letter_placement.push(i)

      else
        incorrect
        all_guesses
      end
    end

  end

  def all_guesses(char)
    @attempt.push(@char)
  end


end

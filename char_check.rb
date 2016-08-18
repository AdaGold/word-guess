
class Char_Check
  attr_accessor :char

  def initialize (char)
    @char = char
    @attempt = []
    @secret_word = "LOVELACE"
  end

  # This method should receive user input
  def receive_input(input)
    puts "Please enter a letter to guess the secret word!"
    @char = gets.chomp.upcase!
    return @char
  end

  def eval_input (char)
    @secret_word.each_char do |chr|
      if @secret_word.include?(@char)
        correct
        all_guesses
      else
        incorrect
        all_guesses
      end
    end
  end

  def all_guesses(char)
    @attempt.push(@char)
  end

  def correct

  end

  def incorrect

  end

end

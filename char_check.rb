
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

  def eval_input (input)
    @secret.each_char { |chr|}
      if @secret_word.include?(chr)

      end
  end

  def correct
    @char
  end

end

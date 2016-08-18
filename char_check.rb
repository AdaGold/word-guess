
class Char_Check
  attr_accessor :char

  def initialize
    @char = char
    @attempt = []
    @hidden = ["_", "_", "_", "_", "_", "_", "_", "_"]
    @secret_word = ["L", "O", "V", "E", "L", "A", "C", "E"]
    @letter_placement = 0
  end

  # This method should receive user input
  def receive_input
    puts "Please enter a letter to guess the secret word!"
    @char = gets.chomp.upcase!
    return @char
  end

  def eval_input
      @secret_word.each do |char|
      while @secret_word.include?(char)
          @letter_placement = @secret_word.index(@char)
          @secret_word.delete_at(@letter_placement.to_i)
          @hidden[@letter_placement.to_i] = @char
      end
      end
    return @hidden
  end


  def all_guesses(char)
    @attempt.push(@char)
  end


end

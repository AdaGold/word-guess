class Char_Check
  attr_accessor :char

  def initialize
    @char = char
    @attempt = []
    @hidden = ["_", "_", "_", "_"]
    @secret_word = ["L", "O", "V", "E"]
  end

  # This method should receive user input
  def receive_input
    puts "Please enter a letter to guess the secret word!"
    @char = gets.chomp.upcase
    return @char
  end

  def eval_input
    letter_placement = ' '
    if @secret_word.include?(@char)
      @secret_word.each do |i|
        if i == @char
          letter_placement = @secret_word.index(char)
          @hidden[letter_placement.to_i] = @char
          letter_placement = ' '
        end
      end
    end
      return @hidden
  end


  def all_guesses(char)
    @attempt.push(@char)
  end


end

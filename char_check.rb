class Char_Check
  attr_accessor :char

  def initialize
    @char = char
    @attempt = []
    @hidden = ["_", "_", "_", "_"]
    @secret_word = ["L", "O", "V", "E"]
  end

  def receive_input
    puts "Please enter a letter to guess the secret word!"
    @char = gets.chomp.upcase
    return @char
  end

  # Known limitation: only works for words with unique letters
  def eval_input
    letter_placement = ' '
    if @secret_word.include?(@char)
      @secret_word.each do |i|
        if i == @char
          letter_placement = @secret_word.index(char)
          @hidden[letter_placement.to_i] = @char
          letter_placement = ' '

          if @attempt.empty?
            puts "There are no incorrectly guessed letters."
          else
            puts "Incorrectly guessed letters: #{ @attempt }"
          end
        end
      end
    else
      puts "That letter was not in the word."
      wrong_guesses
      puts "Incorrectly guessed letters: #{ @attempt }"
    end
  return @hidden
  end

  def wrong_guesses
    @attempt.push(@char)
  end

end

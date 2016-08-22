require_relative "art"

# Originally named the class with the intention of separating out ability to play game into its own class
# Would want to refactor to accomplsh this
class Char_Check
  attr_accessor :char
  attr_accessor :flower

  def initialize
    @char = char
    @attempt = []
    @hidden = ["_", "_", "_", "_"]
    @secret_word = ["L", "O", "V", "E"]
    @flower = Art.new
  end

  def receive_input
    puts "Please enter a letter to guess the secret word!"
    @char = gets.chomp
    # working on input verification
    if @char != /[a-zA-Z]/
      puts ""
    end

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
          @flower.show_art

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
  puts "Secret Word: #{@hidden}"
  end

def winning?
  @secret_word == @hidden
end

  def wrong_guesses
    @attempt.push(@char)
    @flower.remove_petal
    @flower.show_art
  end

  def play_game

    turn_count = 0
    until turn_count == 6 || winning? == true
      receive_input
      eval_input
      turn_count += 1
    end
     if winning?
       puts "You won!"
     else
       puts "Gross you lost"
       exit
     end
  end

end

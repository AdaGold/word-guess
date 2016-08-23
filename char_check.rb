require_relative "art"

# Originally named the class with the intention of separating out ability to play game into its own class
# Would want to refactor to accomplsh this
class Char_Check
  attr_accessor :char
  attr_accessor :flower

  def initialize
    @char = char
    @attempt = []
    @secret_word = ["L", "O", "V", "E", "L", "A", "C", "E"]
    @hidden = ["_", "_", "_", "_", "_", "_", "_", "_"]
    @flower = Art.new
  end

  def receive_input
    puts "\n\nPlease enter a letter to guess the secret word!"
    @char = gets.chomp.upcase
    # working on input verification
    # if @char != /[a-zA-Z]/
    #  puts ""
    #end
    return @char
  end

  def eval_input
    if @secret_word.include?(@char) == false
      wrong_guesses
      puts "Secret Word: "
      puts "#{ @hidden }"
      puts "\nIncorrect guesses: #{ @attempt }"

    else
      @secret_word.each do |char|
        while @secret_word.include?(@char)
          @letter_placement = @secret_word.index(@char)
          @hidden[@letter_placement.to_i] = @char
          # had been using delete_at method, which changed the secret_word index for later loops and caused errors
          @secret_word[@letter_placement.to_i] = "-"
        end
      end
      @flower.show_art
      puts "Secret Word: "
      puts "#{ @hidden }"
      if @attempt.empty?
        puts "\nThere are no incorrect guesses."
      else
        puts "\nIncorrect guesses: #{ @attempt }"
      end
    end
    #return winning?
  end

  def winning?
    @secret_word == ["-", "-", "-", "-", "-", "-", "-", "-"]
  end

  def wrong_guesses
    @attempt.push(@char)
    @flower.remove_petal
    @flower.show_art
  end

  def play_game
    turn_count = 0
    until @flower.counter == 0 || winning? == true
      receive_input
      eval_input
      turn_count += 1
    end

    if winning?
      puts "You won!"
      exit
    else
      @flower.remove_petal
      @flower.show_art
      puts "Gross you lost"
      exit
    end
  end
end

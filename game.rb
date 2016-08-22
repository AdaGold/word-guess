require_relative "volcano"

class Game
  attr_reader :outcome
  attr_reader :word

  def initialize(word)
    @word = word.upcase
    @word_array = @word.scan /\w/
    @points = 5
    @current_status = []
    @guessed_letters = []
    @outcome = nil
    @valid = false

    (@word.length).times do
      @current_status << "_"
    end
  end

  def guess
    until @valid
      print "\nWhat letter do you guess? "
      @guess = gets.chomp.upcase
      valid_letter?
    end
    @guessed_letters << @guess
    check_letter_guess(@guess)
    @valid = false
  end

  def valid_letter?
    # @guessed_letters.include? @guess
    if (@guess =~ /[A-Z]/) == 0 && !(@guessed_letters.include? @guess)
      @valid = true
    else
      print "That's not a valid letter or you've already guessed this one. "
      @valid = false
    end
  end

  def check_letter_guess(guess)
    match = false
    @word_array.each_with_index do |letter, i|
      if letter == guess
        @current_status[i] = letter
        match = true
        if @current_status == @word_array
          @outcome = "win"
        end
      end
    end
    if match == false
      @points -= 1
      if lose?
        @outcome = "lose"
      end
    end
  end

  def print_art
    print "\nMYSTERY WORD: "
    @current_status.each do |letter|
      print letter + " "
    end
    puts " "
    Volcano.new(@points)
    puts "You have #{@points} wrong guesses left."
    print "Guessed letters: "
    @guessed_letters.each do |letter|
      print letter + " "
    end
  end

  def lose?
    @points == 0
  end

end

# creates a new round of the Game, with mystery word
round = Game.new("hello")

# prints starting status
round.print_art

until round.outcome != nil
  round.guess
  round.print_art
end

if round.lose?
  puts "\nGame over. You didn't guess it :(. The secret word was #{ round.word }"
else
  puts "\nYou got it!"
end

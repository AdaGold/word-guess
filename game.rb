class Game

  def initialize(word)
    @word = word.upcase
    @word_array = @word.scan /\w/
    @points = 3
    @current_status = []
    @guessed_letters = []

    (@word.length).times do
      @current_status << "_"
    end
  end

  def guess
    @guess = gets.chomp.upcase
    @guessed_letters << @guess
    check_letter_guess(@guess)
  end

  def check_letter_guess(guess)
    match = false
    @word_array.each_with_index do |letter, i|
      if letter == guess
        puts letter + i.to_s
        @current_status[i] = letter
        match = true
        if @current_status == @word_array
          puts "You guessed it!"
          # exit? break?
        end
      end
    end
    if match == false
      @points -= 1
      if lose?
        puts "Game over. You didn't guess it :(. The secret word was #{ @word }"
        # exit? break?
      end
    end
  end

  def print_art
    print @current_status
    puts "You have #{@points} points left."
    print "Guessed letters: #{ @guessed_letters }"

  end

  def lose?
    @points == 0
  end

end

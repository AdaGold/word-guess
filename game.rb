class Game

  def initialize(word)
    @word = word.upcase
    @word_array = @word.scan /\w/
    @points = 7
    @current_status = []

    (@word.length).times do
      @current_status << "_"
    end
  end

  def guess
    @guess = gets.chomp.upcase
  end

  def check_letter_guess(guess)
    @word_array.each_with_index do |letter, i|
      if letter == guess
        @current_status[i] = letter # need to figure out how to make this work like we think it should
      else
        @points -= 1
      end
    end
  end

  def print_art
    print @current_status
    puts "You have #{@points} points left."

  end

end

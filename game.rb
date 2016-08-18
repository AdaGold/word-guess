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
    check_letter_guess(@guess)
  end

  def check_letter_guess(guess)
    match = false
    @word_array.each_with_index do |letter, i|
      if letter == guess
        puts letter + i.to_s
        @current_status[i] = letter
        match = true
      end
    end
    if match == false
      @points -= 1
    end
  end

  def print_art
    print @current_status
    puts "You have #{@points} points left."

  end

end

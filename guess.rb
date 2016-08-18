 # require_relative 'art'
class Guess
  attr_accessor :guessing_right, :guessing_wrong, :check, :wrong_guess_counter

  def initialize
    # @guessing_right = guessing_right
    # @guessing_wrong = guessing_wrong
    @wrong_guess_counter = 0

  end

  def guessing_right
    puts "Correct!"
  end

  def guessing_wrong()
    puts "Incorrect :( The volcano is smoking omniously."
    @wrong_guess_counter += 1
  end

  def lose?
    if @wrong_guess_counter > 1

    end
  end

  def check
    if lose? == true
    puts "You've guessed too many times without getting the word. Village dead."
    #art.lose #final art for losing should be here
    exit
    end
  end
#lunch time notes: figure out how to .guessing right in program.rb

end #end of class Guess

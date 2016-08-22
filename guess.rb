require_relative 'art'

class Guess
  attr_accessor :guessing_right, :guessing_wrong, :check, :wrong_guess_counter, :wrong_guess_array, :right_guess_array, :word_letter_array

  def initialize(word)
    @wrong_guess_array = []
    @right_guess_array = []
    @word_letter_array = []
       word.chars.each do |char|
        @word_letter_array << char
       end
    @wrong_guess_counter = 0
    @art = Art.new
  end

  def guessing_right
    puts "Correct!"
  end

  def guessing_wrong()
    puts "Incorrect :( The volcano is smoking omniously."
    @wrong_guess_counter += 1
    @art.bad_guess(@wrong_guess_counter)

  end

  def win?
    @right_guess_array == @word_letter_array
  end

  def lose?

      @wrong_guess_counter == 5 # NO IFs HERE :)

  end

  def check
    if lose? == true
      puts "\nYou've guessed too many times without getting the word. Village dead."
      # art.lose #final art for losing should be here
      puts @art.lose_art
      exit
    elsif win? == true
      puts "\nYou Win yay"
      puts @art.win_art
      exit
    else
      puts "\nKeep trying!"
    end
  end
#lunch time notes: figure out how to .guessing right in program.rb

end #end of class Guess

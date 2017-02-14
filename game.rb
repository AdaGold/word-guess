class Game

  require_relative 'answer'
  require_relative 'guess'
  require_relative 'image'

  def initialize
    @fail_whale = Image.new
    @aw = Answer.new("MORDOR") #We should probably not put the initalization word here. Options: hardcode it in the initialize method in Answer, or do the optimization of harcoding a list in Answer, and having initialize pick one of the options from that list.
    # @aw.print_user_answer #This initializes the game board
    @wrong_answers = 0
    @new_guess = Guess.new("")
  end

  def request_user_guess
    puts "What letter would you like to guess?"
    @new_guess = Guess.new(gets.chomp.upcase)
  end

  def check_user_guess #This method needs a parameter (the new_guess.letter?) but we're going to lunch. 
    #This method takes in a string character from guess to check whether it exists in the answer_array.
    #If we have time to go back, we'll use an .each loop here to keep track of what position the correct guesses are in.
    if @aw.answer_array.include?(@new_guess.letter)
      correct_guess(@new_guess.letter)
      @aw.answer_array.each_with_index do |letter, i|
        if @new_guess.letter == letter
          @user_answer[i] = letter
        end
      end
      @aw.check_winner
    else
      incorrect_guess(@new_guess.letter)
    end
  end

  def correct_guess(letter)
    @new_guess.user_correct << letter
    puts "YOU'RE CORRECT"
  end

  def incorrect_guess(letter)
    @new_guess.user_incorrect << letter
    @wrong_answers += 1
    puts "YOU FAIL"
  end

  def print_initial_game_board
    @aw.print_user_answer
  end

  def print_game_board
    while @wrong_answers < 5
      # @fail_whale.image_array.length #TODO: do while loop will do the loop at least once (don't have to initialize variables outside of loop)
      @fail_whale.print_image(@wrong_answers) #This calls pring_image method on our @fail_whale image, taking in the number of wrong answers the user has accrued so far.

      @new_guess.print_guesses #This will print the letters user has guessed so far.

      @aw.print_user_answer #This will print the user answer (the answer class knows about it).

      puts "What letter would you like to guess?" #request new guess if user hasn't won yet.

      @new_guess.letter = gets.chomp.upcase #We're resetting the guess's letter attribute (not the whole guess object).

      check_user_guess(@new_guess.letter)
      #checking this will print the last line of the whale before the loop ends
      if @wrong_answers == @fail_whale.image_array.length
        @fail_whale.print_image(@wrong_answers)
      end
    end

  end
end

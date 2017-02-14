#require_relative 'guess' We're not using this at the moment, might not need?

class Answer #the Answer class stores the word the user is trying guess, and can return whether the guess is correct.
  attr_accessor :word, :answer_array, :user_correct, :user_incorrect

  def initialize(word)
    @word = word
    @answer_array = word.split(//) #this is the array created out of word, split on each character.
    # @user_correct = [] #This is now in Guess.
    # @user_incorrect = [] #This is now in Guess.
    @user_answer = []
    @answer_array.length.times do
      @user_answer << "_"
    end
  end

  def print_user_answer
    @user_answer.each do |character|
      print character + " "
    end
  end

  def check_winner
    if @user_answer == @answer_array
      print_user_answer
      puts "YOU WON!"
      exit
    end
  end

  # def num_incorrect
  #   return @user_incorrect.length
  # end
  # def check_user_guess(user_guess)
  #   #This method takes in a string character from guess to check whether it exists in the answer_array.
  #   #If we have time to go back, we'll use an .each loop here to keep track of what position the correct guesses are in.
  #   if @answer_array.include?(user_guess)
  #     correct_guess(user_guess)
  #     @answer_array.each_with_index do |letter, i|
  #       if user_guess == letter
  #         @user_answer[i] = letter
  #       end
  #     end
  #     check_winner
  #   else
  #       incorrect_guess(user_guess)
  #   end
  # end
  #
  #   def correct_guess(letter)
  #     @user_correct << letter
  #     puts "YOU'RE CORRECT"
  #   end
  #
  #   def incorrect_guess(letter)
  #     @user_incorrect << letter
  #     puts "YOU FAIL"
  #   end


    # def print_guesses
    #   puts "You have already guessed:"
    #   puts "#{ @user_correct } #{ @user_incorrect }"
    # end
end

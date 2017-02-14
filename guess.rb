#The class Guess is going to store and manage the user's guesses
class Guess
attr_accessor :letter, :user_correct, :user_incorrect, :user_guesses

  def initialize(letter) #The class takes in a user's string letter
    @letter = letter
    # @user_guesses = [] #stores all user's guesses are we using?
    @user_correct = [] #stores the user's correct guesses (this may need to move to answer class or require answer class)
    @user_incorrect = [] #stores the user's incorrect guesses (this may need to move to answer class or require answer class)
  end

  def print_user_guess
    puts @letter
  end

  # def make_guess(letter) #adds the guess to the user_guesses array
  #   @user_guesses << letter
  #   puts @user_guesses
  # end

  def print_guesses
    puts "You have already guessed:"
    puts "#{ @user_correct } #{ @user_incorrect }"
  end

end

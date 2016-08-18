#The class Guess is going to store and manage the user's guesses
class Guess

  def initialize(letter) #The class takes in a user's string letter
    @letter = letter
    @user_guesses = [] #stores all user's guesses
  end

  def print_user_guess
    puts @letter
  end

  def make_guess(letter) #adds the guess to the user_guesses array
    @user_guesses << letter
    puts @user_guesses
  end

end

class Guess

  def initialize(letter)
    @letter = letter
    @user_guesses = []
    @user_correct = []
    @user_incorrect = []

  end

  def print_user_guess
    puts @letter
  end

  def make_guess(letter)
    @user_guesses << letter
    puts @user_guesses
  end


end

require_relative "volcano" # keeps ASCII art separate but available to use here

class Game
  attr_reader :outcome
  attr_reader :word

  def initialize(word)
    @word = word.upcase
    @word_array = @word.scan /\w/
    @points = 5
    @current_status = []
    @guessed_letters = []
    @guessed_words = []
    @outcome = nil
    @valid = false

# populate current_status with the correct number of  blank spaces
    (@word.length).times do
      @current_status << "_"
    end
  end

# takes a guess from user and checks it
  def guess
    until @valid
      print "\nWhat letter do you guess? "
      @guess = gets.chomp.upcase

# check if guess is word or letter
      if @guess.length > 1
        @guessed_words << @guess
        check_word_guess
        @valid = true
      else
        valid_letter? # validates input
        @guessed_letters << @guess
        check_letter_guess(@guess)
      end
    end
    @valid = false
  end

# checks that guess is a valid letter and not already guessed
  def valid_letter?
    if (@guess =~ /[A-Z]/) == 0 && !(@guessed_letters.include? @guess)
      @valid = true
    else
      print "That's not a valid letter or you've already guessed this one. "
      @valid = false
    end
  end

# checks if guess matches the word, else note a wrong guess
  def check_word_guess
    if @guess == @word
      @outcome = "win"
      @current_status = @word_array
    else
      @points -= 1
      if lose?
        @outcome = "lose"
      end
    end
  end

# checks if guess matches a letter, else note a wrong guess
  def check_letter_guess(guess)
    match = false
    @word_array.each_with_index do |letter, i|
      if letter == guess
        @current_status[i] = letter
        match = true
        if @current_status == @word_array
          @outcome = "win"
        end
      end
    end
    if match == false
      @points -= 1
      if lose?
        @outcome = "lose"
      end
    end
  end

# output current status of mystery word, ASCII volcano, number of wrong guesses left, guessed letters, guessed words
  def print_art
    print "\nMYSTERY WORD: "
    @current_status.each do |letter|
      print letter + " "
    end
    puts " "
    Volcano.new(@points)
    puts "You have #{@points} wrong guesses left."
    print "Guessed letters: "
    @guessed_letters.each do |letter|
      print letter + " "
    end
    print "\nGuessed words: "
    @guessed_words.each do |word|
      print word + " "
    end
  end

  def lose?
    @points == 0
  end

end

# welcome user to game
puts "Guess the word! Try to guess the secret word before the volcano erupts! You can guess individual letters or the whole word."

# get input for difficulty level
puts "Choose your difficulty level: low, medium or high?"
difficulty = gets.chomp.downcase

# verify input
until difficulty == "low" || difficulty == "medium" || difficulty == "high"
  puts "You can only choose: low, medium or high."
  difficulty = gets.chomp.downcase
end

# play corresponding game
case difficulty
when "low"
  round = Game.new("hello")
when "medium"
  round = Game.new("chocolate")
when "high"
  round = Game.new("rhythm")
end

# prints starting status
round.print_art

# continues guesses until win or lose
until round.outcome != nil
  round.guess
  round.print_art
end

# win or lose
if round.lose?
  puts "\nGame over. You didn't guess it :( The secret word was #{ round.word }."
else
  puts "\nYou got it!"
end

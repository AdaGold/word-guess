class Game
  def initialize
    @num_guess = 8
    @words = ["aspen", "slush", "fauna", "lasso", "tower", "gusty", "elbow", "fancy", "shark", "nifty", "sassy"]
    generate_word(@words)
  end

  #generate random word, blank array, random_word array
  def generate_word(words)
    puts @blank_array
    @random_word = words[rand(0...words.length)]
    puts @random_word
    @blank_array = []
    (@random_word.length).times do
       @blank_array.push("_")
    end
    @answer_array = @random_word.each_char.to_a
  end

  #determine if there's a match and return an updated blank array
  #within this method num_guess goes down and if it gets to 0 you lose
  def guess(guess)
    while @answer_array.include?(guess)
      index = @answer_array.index(guess)
      @blank_array[index] = @answer_array[index]
      @answer_array[index] = "_"
    end
    @num_guess -= 1
    puts @blank_array
    puts @answer_array
  end

  def finished?
    if @num_guess == 0
      true
    else
      false
    end
  end

  def win?
    if @blank_array.join == @random_word
      true
    else
      false
    end
  end
end

class Board
end

def play_game
  game = Game.new
  #puts "Hello welcome to Word Guess."
  puts "Guess a letter:"
  guess = gets.chomp
  #puts "Your guess is #{guess}."
  #puts "game finished is #{game.finished?}"
  game.guess(guess)

  until game.finished? || game.win?
   puts "Enter another guess:"
   guess = gets.chomp
   game.guess(guess)
  end

  if game.win?
    puts "You win!"
  else
    puts "You lose!"
  end
end

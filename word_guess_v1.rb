class Game
  def initialize
    @num_guess = 7
    @words = ["aspen", "slush", "fauna", "lasso", "tower", "gusty", "elbow", "fancy", "shark", "nifty", "sassy"]
    generate_word(@words)
  end

  #generate randome word
  def generate_word(words)
    @random_word = words[rand(0...words.length)]
    puts @random_word
  end

  #determine if there's a match and return an updated blank array
  #within this method num_guess goes down and if it gets to 0 you lose
  def guess(guess)
    blank_array = []
    (@random_word.length).times do
      blank_array.push("_")
    end

    answer_array = @random_word.each_char.to_a

    while answer_array.include?(guess)
      index = answer_array.index(guess)
      blank_array[index] = answer_array[index]
      answer_array[index] = "_"
    end
    @num_guess -= 1
    puts blank_array
    puts answer_array
  end

  def finished?
    if @num_guess == 0
      true
    else
      false
    end
  end

    # if num_guess == 1
      # puts "You have one guess left!"
    # elsif


  # def
  #
  # #joins the blank array into a string and compares it against random_word
  # def outcome
  #   if blank_array.join == random_word
  #     puts "You win!"
  #     exit
  #   elsif num_guess == 0
  #     puts "You lose!"
  #     exit
  #   else
  #     #keep asking
  #   end
  # end

end

def play_game
  game = Game.new
  puts "Hello welcome to Word Guess."
  puts "Guess a letter:"
  guess = gets.chomp
  puts "Your guess is #{guess}."
  puts "game finished is #{game.finished?}"
  game.guess(guess)

  until game.finished?
   puts "Enter another guess:"
   guess = gets.chomp
   game.guess(guess)
  end
end

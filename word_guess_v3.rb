image_array = ["""

                                                                                      /^^^/           /]
                                                                                     /   ]           / ]
      O                                                                      _______/    ]___       /  ]
                                                                            /                \\_____/   /
   O                                                                      _/   [@]  \\ \\                \\
           ___//_                                                        /..         | |                ]
    o     /o )   \\/                                                       VVVvvv\\    | |         _/\\    ]
      O<  )___\\\\_/\\                                                             |               /    \\  ]
                                                                         AAA^^^^^              /       \\]
                                                                          \\_________\\   \\_____/
                                                                                   \\    \\
                                                                                     \\____\\
""",

"""
                                                                             /^^^/           /]
                                                                            /   ]           / ]
      O                                                             _______/    ]___       /  ]
                                                                   /                \\_____/   /
   O                                                             _/   [@]  \\ \\                \\
           ___//_                                               /..         | |                ]
    o     /o )   \\/                                              VVVvvv\\    | |         _/\\    ]
      O<  )___\\\\_/\\                                                    |               /    \\  ]
                                                                AAA^^^^^              /       \\]
                                                                 \\_________\\   \\_____/
                                                                          \\    \\
                                                                            \\____\\
""",


"""
                                                                  /^^^/           /]
                                                                 /   ]           / ]
      O                                                  _______/    ]___       /  ]
                                                        /                \\_____/   /
   O                                                  _/   [@]  \\ \\                \\
           ___//_                                    /..         | |                ]
    o     /o )   \\/                                   VVVvvv\\    | |         _/\\    ]
      O<  )___\\\\_/\\                                         |               /    \\  ]
                                                     AAA^^^^^              /       \\]
                                                      \\_________\\   \\_____/
                                                               \\    \\
                                                                 \\____\\
""",

"""
                                                      /^^^/           /]
                                                     /   ]           / ]
      O                                      _______/    ]___       /  ]
                                            /                \\_____/   /
   O                                      _/   [@]  \\ \\                \\
           ___//_                        /..         | |                ]
    o     /o )   \\/                       VVVvvv\    | |         _/\\    ]
      O<  )___\\\\_/\\                             |               /    \\  ]
                                         AAA^^^^^              /       \\]
                                          \\_________\\   \\_____/
                                                   \\    \\
                                                     \\____\\

""",

"""

                                              /^^^/           /]
                                             /   ]           / ]
      O                              _______/    ]___       /  ]
                                    /                \_____/   /
   O                              _/   [@]  \ \                \\
           ___//_                /..         | |                ]
    o     /o )   \\/               VVVvvv\    | |         _/\\    ]
      O<  )___\\\\_/\\                     |               /    \\  ]
                                 AAA^^^^^              /       \\]
                                  \\_________\\   \\_____/
                                           \\    \\
                                             \\____\\
""",


"""

                                      /^^^/           /]
                                     /   ]           / ]
      O                      _______/    ]___       /  ]
                            /                \\_____/   /
   O                      _/   [@]  \ \                \\
           ___//_        /..         | |                ]
    o     /o )   \\/       VVVvvv\    | |         _/\\    ]
      O<  )___\\\\_/\\             |               /    \\  ]
                         AAA^^^^^              /       \\]
                          \\_________\\   \\_____/
                                   \\    \\
                                     \\____\\
""",

"""
                                  /^^^/           /]
                                 /   ]           / ]
      O                  _______/    ]___       /  ]
                        /                \\_____/   /
   O                  _/   [@]  \\ \\                \\
           ___//_    /..         | |                ]
    o     /o )   \\/   VVVvvv\\    | |         _/\\    ]
      O<  )___\\\\_/\\         |               /    \\  ]
                     AAA^^^^^              /       \\]
                      \\_________\\   \\_____/
                               \\    \\
                                 \\____\\

""",

"""

                                  /^^^/           /]
                                 /   ]           / ]
                         _______/    ]___       /  ]
  MMMMmmm               /                \\_____/   /
          .           _/   [@]  \\ \\                \\
            .        /..         | |                ]
              .    VVVvvv\\    | |         _/\\    ]
                .           |               /    \\  ]
                     AAA^^^^^              /       \\]
                      \\_________\\   \\_____/
                               \\    \\
                                 \\____\\

"""]

class Game
  def initialize
    @num_guess = 8
    @words = ["aspen", "slush", "fauna", "lasso", "tower", "gusty", "elbow", "fancy", "shark", "nifty", "sassy"]
    generate_word(@words)
    @guesses = []
  end

  #generate random word, blank array, random_word array
  def generate_word(words)
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
    @guesses.push(guess)
    puts "Your guesses so far include: #{@guesses}"
    puts @guesses
    while @answer_array.include?(guess)
      index = @answer_array.index(guess)
      @blank_array[index] = @answer_array[index]
      @answer_array[index] = "_"
    end
    @num_guess -= 1
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
  def initialize(image_array)
    @image_array = image_array
  end

  def print_image_array_at(index)
    puts @image_array[index]
  end



  def display_image
    puts @image_array
  end


end

def play_game(image_array)
  board = Board.new(image_array)
  game = Game.new
  puts "Hello welcome to Word Guess."
  image_position = 0
  board.print_image_array_at(image_position)
  puts "Guess a letter:"
  guess = gets.chomp
  puts "Your guess is #{guess}."
  puts "game finished is #{game.finished?}"
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

play_game(image_array)

#1. display correct image based on how many wrong guesses
#2. display board showing correct guesses filled in
#3. dispay guesses before user guesses a new letter
#4. (low-priority/optional) only lets user enter one letter at a time (no numbers)
#5. add colorize

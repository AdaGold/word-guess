
puts "Welcome to Word Guess Game!
      The theme is: pets!"
puts "The rules are as follows:
      Enter one letter at a time
      If correct, the letter will be filled in
      If incorrect, you will lose a petal
      If all your petals are gone, you lose
      If you guess all correct letters in Word you win!!!"

chances = 5
flower = "(@)"


bouquet = '
 \, \, |, /, /
     _\|/_
    |_____|
     |   |
     |___|
'
print flower * chances
print bouquet


words = [ ["C", "A", "T"],
          ["D", "O", "G"],
          ["C", "H", "I", "N", "C", "H", "I", "L", "L", "A"],
          ["F", "E", "R", "R", "E", "T"],
          ["H", "A", "M", "S", "T", "E", "R"],
          ["I", "G", "U", "A", "N", "A"],
          ["S", "N", "A", "K", "E"]
        ]
word = words.shuffle[0]
under_word = ["_"] * word.length


runtime = word.length + chances
all_guesses = []
runtime.times do
  if chances == 0
    exit
  end
  puts "Here is your word: #{under_word}"
  puts "Enter one letter: "

  user_guess = gets.chomp.upcase.to_s

  until /[A-Z]/.match(user_guess)
    puts "Invalid. Please enter a new letter: "
    user_guess = gets.chomp.upcase
  end

  until all_guesses.include?(user_guess[0]) == FALSE
    puts "That's been guessed already. Please enter a new letter.\n\n"
    user_guess = gets.chomp.upcase
  end

  puts "You chose: #{user_guess[0]}"
  all_guesses << user_guess[0]
  puts "\n\nHere are your letters so far : #{all_guesses}\n\n"
  if word.include?(user_guess) == FALSE
      chances -= 1
      puts "THAT IS INCORRECT. You lose a petal!\n\n"
      print flower * chances
      print bouquet


      if chances == 0
        puts "\n\nYOU RAN OUT OF PETALS. YOU LOSE THE GAME\n\n\n"
        puts "The word was: #{word}"
      end
  else
    puts "YOU GUESSED A CORRECT LETTER!"
    if word.include?(user_guess)
      location = word.index(user_guess)
      under_word[location] = user_guess
    end
    if word.all? { |e| all_guesses.include?(e) }
      puts "You win!"
      puts "The word is: #{word}"
      exit
    end
  end
end

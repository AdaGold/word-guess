# require "word_game"

puts "Welcome to Word Guess Game!"
puts "The rules are as follows:
      Enter one letter at a time
      If correct, the letter will be filled in
      If incorrect, you will lose a petal
      If all your petals are gone, you lose
      If you guess all correct letters in Word you win!!!"


puts "
(@)(@)(@)(@)(@)
  ,\,\,|,/,/,
     _\|/_
    |_____|
     |   |
     |___|
"

puts "Enter one letter: "

user_guess = gets.chomp.upcase

until /[a-zA-Z]+/.match(user_guess)   #checking for only letter values
  puts "Invalid. Please enter a letter: "
  user_guess = gets.chomp.upcase
end
first_char = user_guess.chars{|c| c[0]}                  #checking user enters only one character
puts "You chose: #{first_char[0]}"

all_guesses = ["R", "E", "C", "A"]
all_guesses << first_char[0]

puts " Here are your letters so far : #{all_guesses}"



  # until                           #checking user does not enter same character more than once
  #
  #   end

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

user_guess = gets.chomp.upcase.to_s
all_guesses = ["A", "B", "C"]

until /[A-Z]/.match(user_guess)
  puts "Invalid. Please enter a new letter: "
  user_guess = gets.chomp.upcase
end

until all_guesses.include?(user_guess[0]) == FALSE
    puts "That's been guessed already. Please enter a new letter."
    user_guess = gets.chomp.upcase
end

puts "You chose: #{user_guess[0]}"
all_guesses << user_guess[0]
puts " Here are your letters so far : #{all_guesses}"

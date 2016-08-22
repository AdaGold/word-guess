##
require_relative 'levels.rb'
require_relative 'game.rb'

puts "Welcome to word-guess!"
puts "What level would you like to play?"
puts "'a' = easy"
puts "'b' = moderate"
puts "'c' = difficult"

choice = gets.chomp.downcase

until choice == "a" || choice == "b" || choice == "c"
  puts "Please choose a valid choice."
  choice = gets.chomp.downcase
end

game_one = Game.new(choice)
puts game_one.flowers
puts game_one.display_progress

while game_one.remaining_guesses > 0
  puts "Guess a letter or guess the word. You must guess the word exactly."
  puts
  input = gets.chomp.downcase
  puts
  puts
  puts game_one.flowers
  if input.length == 1
    game_one.is_in_word(input)
    puts game_one.display_progress
  else
    game_one.full_word(input)
    puts
    puts "Winning word: #{game_one.word}"
  end

  puts
  puts "You have missed:"
  print game_one.wrong_letters
  puts

  if game_one.win?
    puts "Congrats, you won the game!"
    exit
  end
  puts "You have #{game_one.remaining_guesses} wrong guesses left..."
end

puts "Sorry, you lost! The word was #{game_one.word}. Better luck next time."
exit

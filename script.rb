##
require_relative 'game.rb'
game_one = Game.new

puts game_one.flowers
puts game_one.display_progress

while game_one.remaining_guesses > 0
  puts "Guess a letter"

  input = gets.chomp.downcase
  game_one.is_in_word(input)

  puts game_one.flowers
  puts game_one.display_progress
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
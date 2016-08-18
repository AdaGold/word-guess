##
require_relative 'game.rb'
game_one = Game.new

puts "Guess your first letter"
input = gets.chomp.downcase


while game_one.remaining_guesses > 0
  puts game_one.is_in_word(input)
  puts "You still have #{game_one.remaining_guesses} wrong guesses left..."
end

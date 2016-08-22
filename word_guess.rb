require_relative 'game'
require 'colorize'

words = ["popcorn", "licorice", "marshmallow", "spaghetti", "meatloaf"]

puts ""
puts ""
puts "Welcome to our word guess game!"
word = Game.new(words.sample)
print "Please enter a letter. "
user_guess = gets.chomp.downcase

until word.full?
  if word.answer.include?(user_guess)
    word.fill_in(user_guess)
    if word.full?
      break
    end
    print "Please enter another letter. "
    user_guess = gets.chomp.downcase
  else
    word.remove_flower(user_guess)
    print "Please enter another letter. "
    user_guess = gets.chomp.downcase
  end
end

puts "You win!".blue.blink

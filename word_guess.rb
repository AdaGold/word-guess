require_relative 'game'

words = ["popcorn"]

word = Game.new(words[0])

print "Please enter a letter. "
user_guess = gets.chomp.downcase

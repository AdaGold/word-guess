require_relative 'word_guess'

test = WordGuess.new

puts "\nWelcome to Guess Our Words!\n\n"
test.selection
# puts test.selection

puts "Please guess our word represented below by the dashed line. You can guess one letter at a time. You will have 5 incorrect guesses before the game is over. One 'petal' will be removed after each incorrect guess.\n\n\n"

print test.create_dash_line

puts "\n\n"
puts test.graphic

test.guess

test.conclusion

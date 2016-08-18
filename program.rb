require_relative 'guess'
require_relative 'answer'

puts "What letter would you like to guess?"
user_guess = gets.chomp


# ug = Guess.new(user_guess)
aw = Answer.new("MORDOR")

puts aw.word_array

aw.check_user_guess(user_guess)

puts aw.user_correct.to_s + " CORRECT"
puts aw.user_incorrect.to_s + " INCORRECT"

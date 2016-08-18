require_relative 'guess'

puts "What letter would you like to guess?"
user_guess = gets.chomp!

ug = Guess.new(user_guess)
ug.print_user_guess

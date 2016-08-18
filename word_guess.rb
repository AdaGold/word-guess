require_relative 'game'

words = ["popcorn"]

word = Game.new(words[0])

print "Please enter a letter. "
user_guess = gets.chomp.downcase

(word.answer.length + 5).times do
    word.fill_in(user_guess)
end

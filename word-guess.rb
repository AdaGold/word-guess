require_relative 'word'
require_relative 'answer'
require_relative 'ascii'

max_wrong = 0

answer = Answer.new

#answer.iterate('s')

while max_wrong < 5
    puts "What is your letter guess?"
    guess = gets.chomp
    answer.iterate(guess)
end

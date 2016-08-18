require_relative 'guess'
require_relative 'answer'
require_relative 'image'

fail_whale = Image.new
aw = Answer.new("MORDOR")

puts "What letter would you like to guess?"
user_guess = gets.chomp.upcase

aw.check_user_guess(user_guess)

wrong_answers = aw.num_incorrect

while wrong_answers < fail_whale.image_array.length
  fail_whale.print_image(wrong_answers)

  puts "What letter would you like to guess?"
  user_guess = gets.chomp.upcase #We might not need a guess object at all unless we decide to something more than just store users guesses in an array
  aw.check_user_guess(user_guess)
  wrong_answers = aw.num_incorrect
  #Need to figure out how to print the last line of the whale before the loop ends
end

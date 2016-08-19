require_relative 'guess'
require_relative 'answer'
require_relative 'image'

fail_whale = Image.new
aw = Answer.new("MORDOR") #We should probably not put the initalization word here. Options: hardcode it in the initialize method in Answer, or do the optimization of harcoding a list in Answer, and having initialize pick one of the options from that list.

puts "What letter would you like to guess?"
user_guess = gets.chomp.upcase

aw.check_user_guess(user_guess)

wrong_answers = aw.num_incorrect

while wrong_answers < fail_whale.image_array.length #TODO: do while loop will do the loop at least once (don't have to initialize variables outside of loop)
  fail_whale.print_image(wrong_answers)

  puts "What letter would you like to guess?"
  user_guess = gets.chomp.upcase #We might not need a guess object at all unless we decide to something more than just store users guesses in an array
  aw.check_user_guess(user_guess)
  wrong_answers = aw.num_incorrect
  #checking this will print the last line of the whale before the loop ends
  if wrong_answers == fail_whale.image_array.length
    fail_whale.print_image(wrong_answers)
  end
end

require_relative 'guess'
require_relative 'art'

guess = Guess.new("code")

# Thinking we won't need this because .include? words on a simple string
#word = "code"

variable = guess.word_letter_array.length

variable.to_i.times do
  guess.right_guess_array << "__"
end

puts "\n\n\nHere is a volcano. It is about to burn the village unless you can stop it!\nGuess its favorite word to stop the eruption!\n"
puts "   __
   AA   (I love
  AAAA /  words!)
 AAAAAA
AAAAAAAA\n\n"

n = 1 #we like this
while guess.wrong_guess_array.length < 5
  guess.right_guess_array.each do |i|
    print "#{i.upcase}  "
  end
  print "\nGuess a letter: "
  user_guess = gets.chomp.downcase

  if guess.word_letter_array.include?(user_guess) #stop printing letters at the side?
    guess.guessing_right
    guess_index = guess.word_letter_array.index(user_guess)
    guess.right_guess_array[guess_index] = user_guess.downcase
    guess.check
  else
    guess.wrong_guess_array << user_guess
    puts "#{guess.guessing_wrong}\n\n"
    guess.check
    n += 1 #we like this
  end

  puts "Wrong letters: #{guess.wrong_guess_array}\n\n"
end

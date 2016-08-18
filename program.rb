require_relative 'guess'
require_relative 'art'

guess = Guess.new
art = Art.new
word_letter_array = ["c","o","d","e"] # Thinking we won't need this because .include? words on a simple string
word = "code"

wrong_guess_array = []
right_guess_array = []

puts "\n\n\n\nHere is a volcano. It is about to burn the village unless you can stop it!\nGuess its favorite word to stop the eruption!\n"
puts "   __
   AA   (I love
  AAAA /  words!)
 AAAAAA
AAAAAAAA"
puts "__ __ __ __\n\n\n\n"

n = 1 #we like this
while wrong_guess_array.length < 5
  print "Guess: "
  user_guess = gets.chomp.downcase

  if word.include?(user_guess)
    right_guess_array << user_guess
    guess.guessing_right
    word_letter_array[] # two things. pull the index of whichever letter user_guess is, then display user guess
  else
    wrong_guess_array << user_guess
    puts guess.guessing_wrong
    puts art.bad_guess(n)
    n += 1 #we like this
  end
  guess.check
  puts "Wrong letters: #{wrong_guess_array}"
end

puts "wrong guess counter :#{guess.wrong_guess_counter}"
puts "n #{n}"

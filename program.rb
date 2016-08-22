require_relative 'guess'
require_relative 'art'

guess = Guess.new
art = Art.new
word_letter_array = ["c","o","d","e"] # Thinking we won't need this because .include? words on a simple string
word = "code"

wrong_guess_array = []
right_guess_array = []

variable = word_letter_array.length

variable.to_i.times do
  right_guess_array << "__  "
end

puts "\n\n\n\nHere is a volcano. It is about to burn the village unless you can stop it!\nGuess its favorite word to stop the eruption!\n"
puts "   __
   AA   (I love
  AAAA /  words!)
 AAAAAA
AAAAAAAA"

right_guess_array.each do |i|
  print "#{i}"
end

n = 1 #we like this
while wrong_guess_array.length < 5
  print "\r\rGuess: "
  user_guess = gets.chomp.downcase

  if word.include?(user_guess)
    right_guess_array << user_guess
    guess.guessing_right
<<<<<<< HEAD
    # word_letter_array[] # two things. pull the index of whichever letter user_guess is, then display user guess
=======
>>>>>>> 7a3b97cfe27f91d5260fb7b808feafd152a51f54

  else
    wrong_guess_array << user_guess
    puts guess.guessing_wrong
    puts art.bad_guess(n)
    n += 1 #we like this
  end
  guess.check
   puts "Correct letters: #{word_letter_array & right_guess_array}" #We like this for printing right letters in game
  puts "Wrong letters: #{wrong_guess_array}"
end

puts "wrong guess counter :#{guess.wrong_guess_counter}"
puts "n #{n}"

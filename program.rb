require_relative 'guess'
require_relative 'art'


# word_letter_array = ["c","o","d","e"] # Thinking we won't need this because .include? words on a simple string
word = "code"

wrong_guess_array = []

puts "\n\n\n\nHere is a volcano. It is about to burn the village unless you can stop it!\nGuess its favorite word to stop the eruption!\n"
puts "   __
   AA   (I love
  AAAA /  words!)
 AAAAAA
AAAAAAAA"
puts "__ __ __ __\n\n\n\n"

# begin mysterious loop here
n = 1
print "Guess: "
guess = gets.chomp.downcase

if word.include?(guess)
  puts "Correct!"
  #method to populate the art
else
  puts "Incorrect. The volcano is smoking omniously."
  wrong_guess_array << guess
  puts Art.bad_guess(n)
end
n += 1 
#mysterious loops end

puts "Wrong letters: #{wrong_guess_array}"

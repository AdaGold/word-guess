require_relative 'guess'
require_relative 'art'

guess = Guess.new("rubies")

# Thinking we won't need this because .include? words on a simple string
#word = "code"

variable = guess.word_letter_array.length

variable.to_i.times do
  guess.right_guess_array << "__"
end

puts "\n\n\n\nHere is a volcano. It is about to burn the village unless you can stop it!\nGuess its favorite word to stop the eruption!\n"
puts "   __
   AA   (I love
  AAAA /  words!)
 AAAAAA
AAAAAAAA"

# right_guess_array.each do |i|
#   print "#{i}"
# end

n = 1 #we like this
while guess.wrong_guess_array.length < 5
  guess.right_guess_array.each do |i|
    print "#{i.upcase}  "
  end
  print "\nGuess: "
  user_guess = gets.chomp.downcase

  if guess.word_letter_array.include?(user_guess) #stop printing letters at the side?
    # guess.right_guess_array[n-1] = user_guess.downcase
    guess.guessing_right
    guess_index = guess.word_letter_array.index(user_guess)
    guess.right_guess_array[guess_index] = user_guess.downcase
    puts "#{guess.right_guess_array.inspect}"
    guess.check
  else
    guess.wrong_guess_array << user_guess
    puts guess.guessing_wrong
    # puts art.bad_guess(n)
    guess.check
    n += 1 #we like this
  end

  #  puts "Correct letters: #{word_letter_array & right_guess_array}" #We like this for printing right letters in game
  puts "Wrong letters: #{guess.wrong_guess_array}"
end

puts "wrong guess counter :#{guess.wrong_guess_counter}"
puts "n #{n}"

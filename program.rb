require_relative 'guess'
require_relative 'art'

guess = Guess.new("zoo")

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
  user_input = gets.chomp.downcase

  if
    index_array = []
    index_array = guess.word_letter_array.each_index.select { |i| guess.word_letter_array[i] == user_input } #copied off of stack overflow
    index_array.each do |override|
        guess.right_guess_array[override] = user_input.downcase
    end
    guess.check

  else
    guess.wrong_guess_array << user_input
    puts "#{guess.guessing_wrong}\n\n"
    guess.check
    n += 1 #we like this
  end

  puts "Wrong letters: #{guess.wrong_guess_array}\n\n"
end

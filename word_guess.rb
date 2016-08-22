require_relative 'game'
require 'colorize'

words = {
  "easy" => ["noon", "baseball"],
  "medium" => ["popcorn", "licorice", "marshmallow", "spaghetti", "meatloaf"],
  "hard" => ["supercalifragilisticexpialidocious"]
}

puts ""
puts ""
puts "Welcome to our word guess game!"
print "Choose your difficulty level, " + words.keys.join(", ") + ": "
difficulty = gets.chomp.downcase
until words.keys.include?(difficulty)
  print "Invalid entry. Please select easy, medium, or hard. "
  difficulty = gets.chomp.downcase
end

play = words[difficulty].sample

word = Game.new(play)
print "Please enter a letter, or type exit to quit. "
user_guess = gets.chomp.downcase

until word.full?
  if user_guess == "exit"
      exit
  end

  if word.answer.include?(user_guess) && word.all_letters(user_guess) == true
    word.fill_in(user_guess)
    if word.full?
      break
    end
    print "You got a letter! Please enter another letter. "
    user_guess = gets.chomp.downcase
  elsif word.all_letters(user_guess) == false
    print "Invalid entry. Please enter a letter. "
    user_guess = gets.chomp.downcase
  else
    word.remove_art(user_guess)
    print "Sorry, that letter is wrong. Please enter another letter. "
    user_guess = gets.chomp.downcase
  end
end

puts "You win!".blue.blink

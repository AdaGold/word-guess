require_relative 'game'

words = ["popcorn", "licorice", "marshmallow", "spaghetti", "meatloaf"]

puts ""
puts ""
word = Game.new(words.sample)
puts "Welcome to our word guess game!"
print "Please enter a letter. "
user_guess = gets.chomp.downcase

until word.full?
  if word.answer.include?(user_guess)
    word.fill_in(user_guess)
    if word.full?
      break
    end
    print "Please enter another letter. "
    user_guess = gets.chomp.downcase
  else
    word.remove_flower
    print "Please enter another letter. "
    user_guess = gets.chomp.downcase
  end
end

puts "You win!"
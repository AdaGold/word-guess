require 'colorize'

class Art
  attr_accessor :win, :lose, :bad_guess

  def initialize
  end

  def win_art
    puts "   __
   AA   (Hooray!
  AAAA /  You win!)
 AAAAAA
AAAAAAAA"
  end

  def lose_art
    puts "      (*****)
     (****)
    (***)
   (**)
   AA    (LOSER!!!!!!)
  AAAA  /
 AAAAAA
AAAAAAAA".colorize(:red)
  end

  def bad_guess(guess_num)      # Should there be a check for winning or losing here??
    if guess_num == 0
      puts "   __
   AA   (Nice!
  AAAA /  Keep going!)
 AAAAAA
AAAAAAAA\n\n"
    elsif guess_num == 1
      puts "Incorrect :( The volcano is smoking omniously.\n"
      puts "  (__)
   AA
  AAAA    (5 guesses left!)
 AAAAAA    /
AAAAAAAA\n"
    elsif guess_num == 2
      puts "Careful! Was that rumble I felt?"
      puts "   (   )
  (__)
   AA    (4 guesses left!)
  AAAA   /
 AAAAAA
AAAAAAAA\n"
  elsif guess_num == 3
    puts "That was totally rumble. Yikes."
    puts "    (     )
   (   )
  (__)
   AA
  AAAA   (3 guesses left!)
 AAAAAA  /
AAAAAAAA\n"
  elsif guess_num == 4
    puts "That smokestack is getting awfully high..."
    puts "     (       )
    (     )
   (   )
  (__)
   AA
  AAAA  (2 guesses left!)
 AAAAAA  /
AAAAAAAA\n"
else
  puts "The villagers are evacuating!!!11"
  puts "      (    )
     (    )
    (****)
   (**)
   AA
  AAAA   (1 guess left...)
 AAAAAA   /
AAAAAAAA\n"
  end # ending if
end # ending the method

  # def
end

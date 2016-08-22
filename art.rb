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
    if guess_num == 1
      puts "  (__)
   AA
  AAAA    (5 guesses left!)
 AAAAAA    /
AAAAAAAA"
    elsif guess_num == 2
      puts "   (   )
  (__)
   AA    (4 guesses left!)
  AAAA   /
 AAAAAA
AAAAAAAA"
  elsif guess_num == 3
    puts "    (     )
   (   )
  (__)
   AA
  AAAA   (3 guesses left!)
 AAAAAA  /
AAAAAAAA"
  elsif guess_num == 4
    puts "     (       )
    (     )
   (   )
  (__)
   AA
  AAAA  (2 guesses left!)
 AAAAAA  /
AAAAAAAA"
else
  puts "      (    )
     (    )
    (****)
   (**)
   AA
  AAAA   (1 guess left...)
 AAAAAA   /
AAAAAAAA"
  end # ending if
end # ending the method

  # def
end

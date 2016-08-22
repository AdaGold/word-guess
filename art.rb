class Art
  attr_accessor :win, :lose, :bad_guess

  def initialize
  end

  def win
    puts "   __
   AA   (Hooray!
  AAAA /  You win!)
 AAAAAA
AAAAAAAA"
  end

  def lose
    puts "      (*****)
     (****)
    (***)
   (**)
   AA    (LOSER!)
  AAAA  /
 AAAAAA
AAAAAAAA"
  end

  def bad_guess(guess_num)      # Should there be a check for winning or losing here??
    if guess_num == 1
      puts "  (__)
   AA
  AAAA
 AAAAAA
AAAAAAAA"
    elsif guess_num == 2
      puts "   (   )
  (__)
   AA
  AAAA
 AAAAAA
AAAAAAAA"
  elsif guess_num == 3
    puts "    (     )
   (   )
  (__)
   AA
  AAAA
 AAAAAA
AAAAAAAA"
  elsif guess_num == 4
    puts "     (       )
    (     )
   (   )
  (__)
   AA
  AAAA
 AAAAAA
AAAAAAAA"
else
  puts "      (*****)
     (****)
    (***)
   (**)
   AA    (LOSER!)
  AAAA  /
 AAAAAA
AAAAAAAA"
  end # ending if
end # ending the method

  # def
end

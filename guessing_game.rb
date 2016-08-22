require 'colorize'
class GuessingGame

#WORDS LIKE DIZZY DON'T WORK. OR WORDS THAT HAVE TWO OF THE SAME LETTER
  def initialize
    @rand_answer = ["ZEBRA", "ROCKS", "JUMBO", "RHINO"].sample
    puts @rand_answer
    @answer = @rand_answer.chars
    puts @answer[0] + @answer[1] + @answer[2] + @answer[3] + @answer[4]
    puts @answer
    @num_wrong_guess = 0
    @art = "(asci art)"
    @letter_art = ["_", "_", "_", "_", "_"]
    @wrong_guesses = []
    puts @art
    puts @letter_art[0] + @letter_art[1] + @letter_art[2] + @letter_art[3] + @letter_art[4]

  end

  def compare?
    @answer.include?@guess
  end

  def ascii_art
    if @num_wrong_guess == 0
      puts "full picture"
    elsif @num_wrong_guess == 1
      puts "pic minus 1 balloon"
    elsif @num_wrong_guess == 2
      puts "pic minus 2 balloons"
    elsif @num_wrong_guess == 3
      puts "pic minus 3 balloons"
    else
      puts "pic with all balloons gone"
    end
  end







  def letter_art_change
    if @guess == @answer[0]
      @letter_art[0] = @answer[0]
    elsif @guess == @answer[1]
        @letter_art[1] = @answer[1]
    elsif @guess == @answer[2]
        @letter_art[2] = @answer[2]
    elsif @guess == @answer[3]
        @letter_art[3] = @answer[3]
    elsif @guess == @answer[4]
        @letter_art[4] = @answer[4]
    end

  end

  def check_progress?
    @letter_art.include?"_"
  end


  def game_over?
    if check_progress? == false
      puts "Congrats you won!".colorize(:green)
      exit
    elsif @num_wrong_guess == 4
      puts "You Lost.".colorize(:red)
      puts "The correct word was " + @answer
      exit
    else
      method
    end
  end


  def method #to ask user
    puts "called method"
      puts "Guess a letter!"
      @guess = gets.chomp.to_s.upcase


      if compare? == true
        #ascii_art (doesnt change stays the same for num_wrong_guess)
        ascii_art
        letter_art_change
        puts @letter_art[0] + @letter_art[1] + @letter_art[2] + @letter_art[3] + @letter_art[4]
        puts "Yay! That is a correct letter."

      else
        #ascii_art (changes corresponds to num_wrong_guess, looses balloons)
        @num_wrong_guess += 1
        ascii_art
        puts @letter_art[0] + @letter_art[1] + @letter_art[2] + @letter_art[3] + @letter_art[4]
        @wrong_guesses << @guess
        puts "Sorry! That letter is wrong. You lost a baloon"
        puts "Here are your wrong guesses so far: " + @wrong_guesses.to_s
      end
    game_over?
  end
end
g = GuessingGame.new
g.method

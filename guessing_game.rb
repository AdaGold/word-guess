require 'colorize'
class GuessingGame

  def initialize
    @rand_answer = ["ZEBRA", "DIZZY", "JUMBO", "RHINOS"].sample
    puts @rand_answer
    @answer = @rand_answer.chars
    @num_wrong_guess = 0
    @art = "(asci art)"
    @letter_art = Array.new(@rand_answer.length, "_")
    @wrong_guesses = []

    puts @art
    ### FIND A WAY TO PRINT OUT @LETTER_ART IN A HORIZONTAL LINE. once you do this replace it below in method as well


    @letter_art.each do | i |
      print i
    end
    puts " "

    puts " "

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
  num_of_letters = @answer.length
    num_of_letters.times do |i|
      if @guess == @answer[i]
        @letter_art[i] = @answer[i]
      else
        i += 1
      end
    end
  end

  def check_progress?
    @letter_art.include?"_"
  end


  def game_over?
    if check_progress? == false
      puts " "
      puts "Congrats you won!".colorize(:green)
      exit
    elsif @num_wrong_guess == 4
      puts " "
      puts "You Lost.".colorize(:red)
      puts "The correct word was: " + @rand_answer.colorize(:red)
      exit
    else
      method
    end
  end


  def method #to ask user
      puts " "
      puts "Guess a letter!"
      @guess = gets.chomp.to_s.upcase


      if compare? == true
        #ascii_art (doesnt change stays the same for num_wrong_guess)
        ascii_art
        letter_art_change
        @letter_art.each do | i |
          print i
        end
        puts " "
        puts " "
        puts "Yay! That is a correct letter."

      else
        #ascii_art (changes corresponds to num_wrong_guess, looses balloons)
        @num_wrong_guess += 1
        ascii_art
        @letter_art.each do | i |
          print i
        end
        @wrong_guesses << @guess
        puts " "
        puts " "
        puts "Sorry! That letter is wrong. You lost a baloon"
        puts "Here are your wrong guesses so far: " + @wrong_guesses.to_s
      end
    game_over?
  end
end
g = GuessingGame.new
g.method

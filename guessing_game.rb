require 'colorize'
require_relative 'flower'
class GuessingGame

  def initialize
    @rand_answer = ["ZEBRA", "DIZZY", "JUMBO", "RHINOS", "KITTEN", "DRAGON"].sample
    @answer = @rand_answer.chars
    @num_wrong_guess = 0
    @letter_art = Array.new(@rand_answer.length, "_")
    @flower_art = Flower.new
    @wrong_guesses = []

    puts @flower_art.print_props(0)

    puts " "
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
      puts @flower_art.print_props(0)
    elsif @num_wrong_guess == 1
      puts @flower_art.print_props(1)
    elsif @num_wrong_guess == 2
      puts @flower_art.print_props(2)
    elsif @num_wrong_guess == 3
      puts @flower_art.print_props(3)
    elsif @num_wrong_guess == 4
      puts @flower_art.print_props(4)
    else
      puts @flower_art.print_props(5)
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
      puts " "
      exit
    elsif @num_wrong_guess == 5
      puts " "
      puts "You Lost.".colorize(:red)
      puts "The correct word was: " + @rand_answer.colorize(:red)
      puts " "
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
        #ascii_art (changes corresponds to num_wrong_guess, looses flowers)
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

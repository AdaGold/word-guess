class Game
  attr_accessor :answer, :blanks

  def initialize(answer)
    @answer = answer
    @blanks = []
    @wrong = []
    @art = ["(\\", "(\\", "(\\", "(\\", "(\\"]
    get_blanks
    status
  end

  def get_blanks
    @answer.length.times do
      @blanks << "_"
    end
  end

  def fill_in(guess)
    if guess == @answer
      @blanks = []
      @blanks << guess
    else
      answer_letters = @answer.split('') #this gives us an array of the answer letters
      answer_letters.each_with_index do |letter, i|
        if letter == guess
          @blanks[i] = guess
        end
      end
    end
    status
  end

  def remove_art(guess)
    unless @wrong.include?(guess)
      @art.pop
      @wrong << guess
    end
    status
    if @art.length == 0
      puts "All the candles went out! The word was #{@answer}."
      puts "Game over."
      exit
    end
  end

  def full?
    @blanks.join("") == @answer
  end

  def status
    puts " "
    puts @art.join("  ").yellow
    puts (".".light_blue + "'".yellow + ". ".light_blue) * 5
    puts "| | ".light_blue * 5
    puts "| | ".light_blue * 5
    puts "|_| ".light_blue * 5
    puts " "
    puts @blanks.join(" ")
    puts " "
    puts "Wrong guesses: " + @wrong.join(", ").red
  end

  def all_letters(guess)
    guess[/^[A-Za-z]+$/] == guess
  end
end

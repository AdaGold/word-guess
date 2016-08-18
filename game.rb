class Game
attr_accessor :answer, :blanks

  def initialize(answer)
    @answer = answer
    @blanks = []
  end

  def get_blanks
    @answer.length.times do
      @blanks << "_"
    end
  end

  def fill_in(guess)
    answer_letters = @answer.split('') #this gives us an array of the answer letters
    game_blanks = @blanks
    answer_letters.each_with_index do |letter, i|
      if letter == guess
        game_blanks[i] = guess
      end
    end
    print game_blanks.join("")
  end
end

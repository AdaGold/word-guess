require 'awesome_print'

class Game
    attr_accessor :answer, :blanks

    def initialize(answer)
        @answer = answer
        @blanks = []
        @flowers = ["(@)", "(@)", "(@)", "(@)", "(@)"]
        get_blanks
        status
    end

    def get_blanks
        @answer.length.times do
            @blanks << "_"
        end
    end

    def fill_in(guess)
        answer_letters = @answer.split('') #this gives us an array of the answer letters
        answer_letters.each_with_index do |letter, i|
            if letter == guess
                @blanks[i] = guess
            end
        end
        status
    end

    def remove_flower
      @flowers.pop
      status
      if @flowers.length == 0
        puts "You ran out of flowers. Game over."
        exit
      end
    end

    def full?
        @blanks.join("") == @answer
    end

    def status
      puts @flowers.join("")
      puts "`| `| `| `| `|"
      print @blanks.join("") + "\n\n"
    end
end

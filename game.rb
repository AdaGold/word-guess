class Game
    attr_accessor :answer, :blanks

    def initialize(answer)
        @answer = answer
        @blanks = []
        @flowers = ["(@)", "(@)", "(@)", "(@)", "(@)"]
        get_blanks
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
                counter +=1
            end
        end
#        if counter == 0
#            remove_flower
#        end
        print @blanks.join("")
    end

    def remove_flower
        @flowers.pop
        print @flowers
#        if @flowers.length == 0
#            puts "You ran out of flowers. Game over."
#            exit
        end
    end

    def full?
        @blanks == @answer
    end
end

class Game
    attr_accessor :answer, :blanks

    def initialize(answer)
        @answer = answer
        @blanks = []
        @wrong = []
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

        def remove_flower(guess)
            unless @wrong.include?(guess)
                @flowers.pop
                @wrong << guess
            end
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
            puts " "
            puts @flowers.join("")
            puts "`| `| `| `| `|"
            puts " "
            puts @blanks.join(" ")
            puts " "
            puts "Wrong guesses: " + @wrong.join(", ")
        end
    end

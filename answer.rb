require_relative 'ascii'
require_relative 'word'

class Answer
    attr_reader :answer

    def initialize
        @answer = ['s', 't', 'u', 'd', 'y']
        # @index = index
        # @answer = "study"
    end

    def iterate
        max_wrong = 0
        puts "What is your letter guess?"
        guess = gets.chomp
        while max_wrong < 5
            @answer.each_with_index do |letter, i|
                until guess == letter
                    puts "Wrong guess!"
                    puts "Try again, loser!"
                    w = Ascii.new
                    w.wrong
                    puts guess
                    guess = gets.chomp
                    max_wrong += 1
                end
                puts "You're right!"
                g = Word.new(guess)
                g.replace_dash(guess, i)
            end
        end

            # if guess == letter
            #     puts "You're right!"
            #     g = Word.new(guess)
            #     g.replace_dash(guess, i)
            #     puts "What is your next guess?"
            #     guess = gets.chomp
            # else
            #     puts "You're wrong!"
            #     letter.wrong(guess)
            #     max_wrong += 1
            # end
    end

end

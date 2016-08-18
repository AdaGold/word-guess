require_relative 'ascii'
require_relative 'word'

class Answer
    attr_reader :answer 

    def initialize
        @answer = ['s', 't', 'u', 'd', 'y']
        @index = index
        # @answer = "study"
    end

    def iterate(guess)
        @answer.each_with_index do |letter, i|
            if guess == letter
                puts "You're right!"
                g = Word.new(guess)
                @index = i
                g.replace_dash(guess)
            else
                puts "You're wrong!"
                letter.wrong(guess)
                max_wrong += 1
            end
        end
    end

end

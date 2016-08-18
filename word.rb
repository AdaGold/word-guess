require_relative 'answer'

class Word
    attr_reader

    def initialize
        @screen_output = ['_', '_', '_', '_', '_']
    end

    def replace_dash(guess) # guess is a letter
        @screen_output.gsub!('_', guess)
        print "word: " + @screen_output
    end

    def correct(input) # input should be a letter
        answer = Answer.new
        answer.each do |letter|
            if guess == letter
                puts "You're right!"
                guess.replace_dash(letter)
            end
        end
    end
end

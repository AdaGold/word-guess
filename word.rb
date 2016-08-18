require_relative 'answer'


class Word
    attr_accessor :screen_output, :letter

    def initialize(letter)
        @screen_output = ['_', '_', '_', '_', '_']
        @letter = letter
        @index = i
    end

    def replace_dash(guess) # guess is a letter
        @screen_output[@index].gsub!('_', guess) #s.gsub!
        print "word: " + @screen_output.to_s
    end
end

    # def correct(guess) # input should be a letter
    #     answer = Answer.new
    #     answer.each do |letter|
    #         if guess == letter
    #             puts "You're right!"
    #             guess.replace_dash(letter)
    #         end
    #     end

require_relative 'answer'

class Word
    attr_reader

    def initialize
        @screen_output = ['_', '_', '_', '_', '_']
    end


    def correct(input) # input should be a letter
        answer = Answer.new
        # if answer.include?(input) true
        #     index of that letter in answer array
        #     and replace the _ with that letter
        #
        # puts

        # while number_of_guess < 5
        #     puts "What is your letter guess?"
        #     guess = gets.chomp

        answer.each do |letter|
            if guess == letter
                puts "You're right!"
                
            else
                puts "You're wrong!"
                # alter the ACSII art
            end
        end

        # number_of_guess -= 1
        end

    end

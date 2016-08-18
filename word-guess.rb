




word: _ _ _ _ _ _

answer = ['s', 't', 'u', 'd', 'y']
number_of_guess = answer.length


while number_of_guess < 5
    puts "What is your letter guess?"
    guess = gets.chomp
    answer.each do |letter|
        if guess == letter
            puts "You're right!"
            # fill the blank
        else
            puts "You're wrong!"
            # alter the ACSII art
        end
    end
    number_of_guess -= 1
end

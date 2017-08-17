#######List of nouns ##################################################
# generated word
# letter guessed
# word made up of dashes and letters
#


############List of verbs ##############################################
#guessing a letter
#checking if letter is in word - appropriate reponce if it is in word or not (modify word displayed if it is, decrease number of guesses if it isn't)
#removing the dashes if the letter is in the word
#Keep track of how many guesses are left

#validating user input
    #verifying user input is one letter
    #Display letters that have already been guessed (create an array to add guessed letter to, and check that)
#Changing ASCII-art based on number of wrong guesses

#A match method to guess if dash array now equals letter array
#lose method - when guessing have been decreased to zero (method that counts guesses?)

########## classes #########################################################
# word is a class
# each letter is a class? Use letter instance within the instance of the word class
#ASCII-art in its own class? Or just within the word class


# require 'faker'
#
# words = []
# 10.times do
#   words << Faker::HarryPotter.location
# end
#
# puts words

class Word
  attr_reader :word, :word_array, :dash_array
  def initialize(word)
    @word = word
    @word_array = @word.split(//)
    @dash_array = (("-") * @word_array.length).split(//)
    @remaining_guesses = 5
    @letters_guesses = []
  end

  def check_if_in_word(letter)
    @letters_guesses << letter
    if @word_array.include?(letter)
      index = @word_array.each_index.select{|i| @word_array[i] == letter}
      index.each do |value|
        @dash_array[value] = letter
        return @dash_array
      end
    else
      @remaining_guesses -= 1
    end
  end#check_if_in_word

  def user_display
    win?
    lose?

    return @dash_array.join(' '), "You have #{@remaining_guesses} remaining guesses.", "Letters you have guessed: #{@letters_guesses.join(' ')}"
    # ASCII-art
    # case statement for number of guesses left to change art
  end

  private

  def win?
    if @dash_array == @word_array
      return "You win!" #Add ASCII-art rainbows
      exit
    end
  end

  def lose?
    if @remaining_guesses == 0
      return "You lose" #Add ASCII-art sad
      exit
    end
  end


end

#Generating a word for the user to guess
#Need to add in more words later
random_words =["WATCH"]
sample_word = Word.new(random_words.sample)

#Getting a letter from the user
#Still need to do varification that is is a letter and that it has not already been guessed

puts "Please enter a letter: "
  user_input = gets.chomp.upcase

#verify user input
until ((user_input.length == 1) && (/[\d]/.match(user_input) == nil))
  puts "Please enter a letter: "
  user_input = gets.chomp.upcase
end


test = sample_word.check_if_in_word(user_input)
# puts test
puts sample_word.user_display


# puts sample_word.word
# puts sample_word.word_array
# puts sample_word.dash_array

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
#Remove letter from word when guessed
#Remove letter from alphabet array if it is guessed
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
    if @word_array.include?(letter)
      index = @word_array.each_index.select{|i| @word_array[i] == letter}
      puts index
      index.each do |value|
        @dash_array[value] = letter
        puts @dash_array
        return @dash_array
      end
    else
      puts "no"
      @letters_guesses << letter
      @remaining_guesses -= 1
    end
  end#check_if_in_word


end

#Generating a word for the user to guess
#Need to add in more words later
random_words =["watch"]
sample_word = Word.new(random_words.sample)

#Getting a letter from the user
#Still need to do varification that is is a letter and that it has not already been guessed
puts "Please enter a letter"
  guessed_letter = gets.chomp

test = sample_word.check_if_in_word(guessed_letter)
# puts test




# puts sample_word.word
# puts sample_word.word_array
# puts sample_word.dash_array

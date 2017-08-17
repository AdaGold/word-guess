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
  attr_reader :word, :word_array
  def initialize(word)
    @word = word
    @word_array = @word.split(//)
  end
end

random_words =["watch", "computer", "eraser", "desk"]

sample_word = Word.new(random_words.sample)

puts sample_word.word
puts sample_word.word_array

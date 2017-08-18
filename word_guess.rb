

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


###########################
#Things to do
  #for difficulty level have three different arrays of different length words, case statement to pick from one of them depending on what difficulty user wants
  #allow the user to enter the whole word



require_relative 'word_guess_ascii'
require 'colorize'
class Word
  attr_reader :word, :word_array, :dash_array, :letters_guesses
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
    win
    lose
    puts  "\n\nWord you need to guess: \n\n#{@dash_array.join(' ')}".colorize(:blue), "\nLetters you have guessed: #{@letters_guesses.join(' ')}".colorize(:yellow), "You have #{@remaining_guesses} remaining guesses.".colorize(:green)
    case @remaining_guesses
    when 5
      puts five
    when 4
      puts four
    when 3
      puts three
    when 2
      puts two
    when 1
      puts one
    end

    # ASCII-art
    # case statement for number of guesses left to change art
  end

  private

  def win
    if @dash_array == @word_array
      puts "\n\nYou won!\n".colorize(:blue)
      puts you_win
     exit #Add ASCII-art rainbows,
    end
  end

  def lose
    if @remaining_guesses == 0
      puts "\n\nYou lost\n".colorize(:red)
      puts you_lose
       exit  #Add ASCII-art sad
    end
  end


end


#Generating a word for the user to guess
#Need to add in more words later
random_words_easy =["WATCH", "TABLE", "CHAIR", "COMPUTER"]
random_words_hard = ["BANDWAGON", "THRIFTLESS", "WHIZZING", "NYMPH"]




#Getting a letter from the user
#Still need to do varification that is is a letter and that it has not already been guessed
puts "Welcome to the word-guess game!".colorize(:blue)
puts "Would you like to play the easy version or the hard version?".colorize(:blue)
  user_version = gets.chomp.downcase

until user_version == "easy" || user_version == "hard"
  puts "Please enter 'easy' or 'hard'! Thanks!"
  user_version = gets.chomp.downcase
end

case user_version
when "easy"
  sample_word = Word.new(random_words_easy.sample)
when "hard"
  sample_word = Word.new(random_words_hard.sample)
end

loop do
puts "Please enter a letter: ".colorize(:blue)
  user_input = gets.chomp.upcase

#Defines what special characters are
  special = "?<>',?[]}{=-)(*&^%$#`~{}"
  regex = /[#{special.gsub(/./){|char| "\\#{char}"}}]/

#verify user input
until ((user_input.length == 1) && (/[\d]/.match(user_input) == nil)) && !(sample_word.letters_guesses.include?(user_input))
  if !(/[\d]/.match(user_input) == nil) && user_input.to_i.to_s == user_input
    puts "No numbers! Please enter a letter!".colorize(:blue)
  elsif user_input.length > 1 && !(/[\d]/.match(user_input) == nil)
    puts "Please enter a single letter with no numnbers!".colorize(:blue)
  elsif user_input.length > 1 && /[\d]/.match(user_input) == nil
    puts "Please enter a single letter at a time!".colorize(:blue)
  elsif sample_word.letters_guesses.include?(user_input)
    puts "You already guessed that letter! Please enter a different letter!".colorize(:blue)
  elsif !(/[\d]/.match(user_input) == nil)
    puts "Please don't enter a number! Enter a letter!".colorize(:blue)
  end
  user_input = gets.chomp.upcase
end

#Check if letter is in the word, and change @dash_array or @remaining_guesses
sample_word.check_if_in_word(user_input)

puts sample_word.user_display
# puts sample_word.dash_array == sample_word.word_array
# puts sample_word.dash_array.join(' ')
# puts sample_word.word_array.join(' ')
end#loop



# puts sample_word.word
# puts sample_word.word_array
# puts sample_word.dash_array

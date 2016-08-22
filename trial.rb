require 'colorize'

class Guess
	attr_reader :answer, :anchor, :chars

	def initialize
		@answer = "spoon"
		@chars = []

		@answer.split("").each do |c|
			if not @chars.include?(c)
				@chars << c
			end
		end

		@anchor = [
			"                               ___".colorize(:black),
			"                              /   \\".colorize(:black),
			"                             |  o  |".colorize(:black),
			"                              \\   / ".colorize(:black),
			"                       ________) (________".colorize(:black),
			"                      |                   |".colorize(:black),
			"                      '------.     .------'".colorize(:black),
			"                              |   | ".colorize(:black),
			"                              |   | ".colorize(:black),
			"                              |   | ".colorize(:black),
			"                              |   | ".colorize(:black),
			"                   /\\         |   |         /\\ ".colorize(:black),
			"                  /_ \\        /   \\        / _\\ ".colorize(:black),
			"                    \\ '.    .'     '.    .' / ".colorize(:black),
			"                     \\  '--'         '--'  / ".colorize(:black),
			"                      '.                 .' ".colorize(:black),
			"                        '._           _.' ".colorize(:black),
			"                           `'-.   .-'` ".colorize(:black),
			"                               \\ / ".colorize(:black),
			"                                ` ".colorize(:black),
			"~~~~ ~~ ~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~ ~~~~~~~~~~~ ~~~".colorize(:blue),
			"~     ~~   ~  ~     ~~~~~~~~~~~~~~~~~~~~~~~~~~     ~~     ~~ ~ ".colorize(:blue),
			"~      ~~    ~~ ~~ ~~  ~~~~~~~~~~~~~ ~~~~  ~     ~~~    ~ ~~~  ~ ~ ".colorize(:blue),
			"~  ~~     ~       ~      ~~~~~~  ~~ ~~~       ~~ ~ ~~  ~~ ~ ".colorize(:blue),
			"~  ~      ~ ~      ~       ~~ ~~~~~~  ~      ~~  ~             ~~ ".colorize(:blue),
			"  ~            ~        ~      ~      ~~   ~             ~ ".colorize(:blue)
		]
	end

	def display_art(is_correct, max_wrong)

		if is_correct == true
			if @chars.length == 0
				puts "CONGRATULATIONS! The word was #{@answer}!"
				exit
			end
			puts @anchor
		else
			case max_wrong
			when 0
				puts @anchor
			when 1
				@anchor = [
					"                               ___".colorize(:black),
					"                              /   \\".colorize(:black),
					"                             |  o  |".colorize(:black),
					"                              \\   / ".colorize(:black),
					"                       ________) (________".colorize(:black),
					"                      |                   |".colorize(:black),
					"                      '------.     .------'".colorize(:black),
					"                              |   | ".colorize(:black),
					"                              |   | ".colorize(:black),
					"                              |   | ".colorize(:black),
					"                              |   | ".colorize(:black),
					"                   /\\         |   |         /\\ ".colorize(:black),
					"                  /_ \\        /   \\        / _\\ ".colorize(:black),
					"                    \\ '.    .'     '.    .' / ".colorize(:black),
					"                     \\  '--'         '--'  / ".colorize(:black),
					"                      '.                 .' ".colorize(:black),
					"                        '._           _.' ".colorize(:black),
					"~~~~ ~~ ~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~ ~~~~~~~~~~~ ~~~".colorize(:blue),
					"~     ~~   ~  ~     ~~~~~~~~~~~~~~~~~~~~~~~~~~     ~~     ~~ ~ ".colorize(:blue),
					"~      ~~    ~~ ~~ ~~  ~~~~~~~~~~~~~ ~~~~  ~     ~~~    ~ ~~~  ~ ~ ".colorize(:blue),
					"~  ~~     ~       ~      ~~~~~~  ~~ ~~~       ~~ ~ ~~  ~~ ~ ".colorize(:blue),
					"~  ~      ~ ~      ~       ~~ ~~~~~~  ~      ~~  ~             ~~ ".colorize(:blue),
					"  ~            ~        ~      ~      ~~   ~             ~ ".colorize(:blue)
				]
				puts @anchor
			when 2
				@anchor = [
					"                               ___".colorize(:black),
					"                              /   \\".colorize(:black),
					"                             |  o  |".colorize(:black),
					"                              \\   / ".colorize(:black),
					"                       ________) (________".colorize(:black),
					"                      |                   |".colorize(:black),
					"                      '------.     .------'".colorize(:black),
					"                              |   | ".colorize(:black),
					"                              |   | ".colorize(:black),
					"                              |   | ".colorize(:black),
					"                              |   | ".colorize(:black),
					"                   /\\         |   |         /\\ ".colorize(:black),
					"                  /_ \\        /   \\        / _\\ ".colorize(:black),
					"~~~~ ~~ ~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~ ~~~~~~~~~~~ ~~~".colorize(:blue),
					"~     ~~   ~  ~     ~~~~~~~~~~~~~~~~~~~~~~~~~~     ~~     ~~ ~ ".colorize(:blue),
					"~      ~~    ~~ ~~ ~~  ~~~~~~~~~~~~~ ~~~~  ~     ~~~    ~ ~~~  ~ ~ ".colorize(:blue),
					"~  ~~     ~       ~      ~~~~~~  ~~ ~~~       ~~ ~ ~~  ~~ ~ ".colorize(:blue),
					"~  ~      ~ ~      ~       ~~ ~~~~~~  ~      ~~  ~             ~~ ".colorize(:blue),
					"  ~            ~        ~      ~      ~~   ~             ~ ".colorize(:blue)
				]
				puts @anchor
			when 3
				@anchor = [
					"                               ___".colorize(:black),
					"                              /   \\".colorize(:black),
					"                             |  o  |".colorize(:black),
					"                              \\   / ".colorize(:black),
					"                       ________) (________".colorize(:black),
					"                      |                   |".colorize(:black),
					"                      '------.     .------'".colorize(:black),
					"                              |   | ".colorize(:black),
					"                              |   | ".colorize(:black),
					"~~~~ ~~ ~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~ ~~~~~~~~~~~ ~~~".colorize(:blue),
					"~     ~~   ~  ~     ~~~~~~~~~~~~~~~~~~~~~~~~~~     ~~     ~~ ~ ".colorize(:blue),
					"~      ~~    ~~ ~~ ~~  ~~~~~~~~~~~~~ ~~~~  ~     ~~~    ~ ~~~  ~ ~ ".colorize(:blue),
					"~  ~~     ~       ~      ~~~~~~  ~~ ~~~       ~~ ~ ~~  ~~ ~ ".colorize(:blue),
					"~  ~      ~ ~      ~       ~~ ~~~~~~  ~      ~~  ~             ~~ ".colorize(:blue),
					"  ~            ~        ~      ~      ~~   ~             ~ ".colorize(:blue)
				]
				puts @anchor
			when 4
					@anchor = [
						"                               ___".colorize(:black),
						"                              /   \\".colorize(:black),
						"                             |  o  |".colorize(:black),
						"                              \\   / ".colorize(:black),
						"                       ________) (________".colorize(:black),
						"~~~~ ~~ ~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~ ~~~~~~~~~~~ ~~~".colorize(:blue),
						"~     ~~   ~  ~     ~~~~~~~~~~~~~~~~~~~~~~~~~~     ~~     ~~ ~ ".colorize(:blue),
						"~      ~~    ~~ ~~ ~~  ~~~~~~~~~~~~~ ~~~~  ~     ~~~    ~ ~~~  ~ ~ ".colorize(:blue),
						"~  ~~     ~       ~      ~~~~~~  ~~ ~~~       ~~ ~ ~~  ~~ ~ ".colorize(:blue),
						"~  ~      ~ ~      ~       ~~ ~~~~~~  ~      ~~  ~             ~~ ".colorize(:blue),
						"  ~            ~        ~      ~      ~~   ~             ~ ".colorize(:blue)
					]
					puts @anchor
			when 5
				@anchor = [
					"                               ___".colorize(:black),
					"                              /   \\".colorize(:black),
					"~~~~ ~~ ~~~~~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~ ~~~~~~~~~~~ ~~~".colorize(:blue),
					"~     ~~   ~  ~     ~~~~~~~~~~~~~~~~~~~~~~~~~~     ~~     ~~ ~ ".colorize(:blue),
					"~      ~~    ~~ ~~ ~~  ~~~~~~~~~~~~~ ~~~~  ~     ~~~    ~ ~~~  ~ ~ ".colorize(:blue),
					"~  ~~     ~       ~      ~~~~~~  ~~ ~~~       ~~ ~ ~~  ~~ ~ ".colorize(:blue),
					"~  ~      ~ ~      ~       ~~ ~~~~~~  ~      ~~  ~             ~~ ".colorize(:blue),
					"  ~            ~        ~      ~      ~~   ~             ~ ".colorize(:blue)
				]
				puts @anchor
			else
				puts "You lose."
				exit
			end
		end
	end

	def show_word()
		output = @answer.clone() #

		@chars.each do |c|
			while output.include?(c)
				output.sub!(c, "_")
			end
		end

		to_screen = ""

		output.split('').each do |c|
			to_screen = to_screen + " " + c
		end

		puts to_screen
		return to_screen
	end

	def play

		show_word()
		max_wrong = 0
		display_art(true, max_wrong)
		guesses = []

		while @chars.length > 0
			puts "Please guess a letter"
			input = gets.chomp.downcase
			if input.match(/\W/) || input.match(/\d/)
				puts "You must input a letter."
				input = gets.chomp.downcase
			end
			guess = input[0, 1]
			guesses << guess
			puts "You've guessed #{guesses[0..(guesses.length - 1)]} so far."
			puts "You just guessed #{guesses[-1]}."

			if @answer.include?(guess) == true
				if @chars.include?(guess) == true
					puts "Nice! You guessed correctly."
					@chars.delete(guess)
				else
					puts "You've already guess that letter before!"
				end

				display_art(true, max_wrong)
				show_word()
			else
				puts "Sorry, wrong guess!"
				max_wrong += 1
				display_art(false, max_wrong)
				show_word()
			end
		end
	end
end

a = Guess.new
a.play

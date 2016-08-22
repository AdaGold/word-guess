class Guess
	attr_reader :answer, :r1, :r2, :r3, :r4, :r5, :r6, :chars

    def initialize
		@answer = "spoon"
        @chars = []

        @answer.split("").each do |c|
        	if not @chars.include?(c)
        		@chars << c
        	end
        end

        @r1 = "(@)(@)(@)(@)(@)"
        @r2 = "   ~~~~~~~~~   "
        @r3 = "     ~~~~~     "
        @r4 = "    |_____|    "
        @r5 = "     |   |     "
        @r6 = "     |___|     "

	end

	def display_art(is_correct, max_wrong) # guess; only 1 flower got trimmed

		if is_correct == true
			if @chars.length == 0
				puts "CONGRATULATIONS!"
				exit
			end
			puts @r1
        else
			# puts @r1[0..-4]
			# puts @r2
	        # puts @r3
	        # puts @r4
	        # puts @r5
	        # puts @r6
			# return @r1
			case max_wrong
				when 1
					@r1 = @r1[0..-4]
					puts @r1
				when 2
					@r1 = @r1[0..-4]
					puts @r1
				when 3
					@r1 = @r1[0..-4]
					puts @r1
				when 4
					@r1 = @r1[0..-4]
					puts @r1
				when 5
					@r1 = @r1[0..-4]
					puts @r1
				else
					puts "You lose."
					exit
			end
		end
        puts @r2
        puts @r3
        puts @r4
        puts @r5
        puts @r6
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

    	while @r1.length > 0 || @chars.length > 0
    		puts "Please guess a letter"
    		input = gets.chomp
    		guess = input[0, 1]
    		puts guess

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
				puts max_wrong
				display_art(false, max_wrong)
    			show_word()
    		end
		end

		# if @chars.length > 0
		# 	puts "GAME OVER!"
		# 	exit
		# else
		# 	puts "CONGRATULATIONS!"
		# 	exit
		# end
    end
end

a = Guess.new
a.play

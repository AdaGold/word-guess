# require_relative 'guess' #We aren't using this at the moment. Might not need?
# require_relative 'answer'
# require_relative 'image'
require_relative 'game'

new_game = Game.new

new_game.print_initial_game_board

new_game.request_user_guess #Calls the get_user_guess method on the new game.

new_game.check_user_guess #Calls the check_user_guess method using the user guess requested above.

new_game.print_game_board #Calls the print_game_board method, which is a loop checking whether the number of wrong answers is less than the image's length. If wrong_answers is less, keep playing. If it's equal, game ends. If user correctly guesses, then game will exit.

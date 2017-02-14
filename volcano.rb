require "colorize"
# This class outputs the corresponding ASCII volcano depending on how many wrong guesses have been made in game
class Volcano

  def initialize(score)
    case score
    when  5
      puts "\n                /vvv\\"
      puts "               /     \\"
      puts "              /       \\"
      puts "             /         \\"
      puts "            /           \\"
      puts "          /               \\"
      puts "         /                 \\"
      puts "        /                   \\"
    when 4
      puts "\n                /vvv\\"
      puts "               /     \\"
      puts "              /       \\"
      puts "             /         \\"
      puts "            /           \\"
      puts "          /               \\"
      print "         /"
      print "AAAAAAAAAAAAAAAAA".colorize(:red)
      puts "\\"
      print "        /"
      print "AAAAAAAAAAAAAAAAAAA".colorize(:red)
      puts "\\"
    when 3
      puts "\n                /vvv\\"
      puts "               /     \\"
      puts "              /       \\"
      puts "             /         \\"
      print "            /"
      print "AAAAAAAAAAA".colorize(:light_yellow)
      puts "\\"
      print "          /"
      print "AAAAAAAAAAAAAAA".colorize(:light_yellow)
      puts "\\"
      print "         /"
      print "AAAAAAAAAAAAAAAAA".colorize(:red)
      puts "\\"
      print "        /"
      print "AAAAAAAAAAAAAAAAAAA".colorize(:red)
      puts "\\"
    when 2
      puts "\n                /vvv\\"
      puts "               /     \\"
      print "              /"
      print "AAAAAAA".colorize(:light_red)
      puts "\\"
      print "             /"
      print "AAAAAAAAA".colorize(:light_red)
      puts "\\"
      print "            /"
      print "AAAAAAAAAAA".colorize(:light_yellow)
      puts "\\"
      print "          /"
      print "AAAAAAAAAAAAAAA".colorize(:light_yellow)
      puts "\\"
      print "         /"
      print "AAAAAAAAAAAAAAAAA".colorize(:red)
      puts "\\"
      print "        /"
      print "AAAAAAAAAAAAAAAAAAA".colorize(:red)
      puts "\\"

    when 1
      print "\n                /"
      print "AAA".colorize(:light_red).blink
      puts "\\"
      print "               /"
      print"AAAAA".colorize(:light_yellow).blink
      puts "\\"
      print "              /"
      print "AAAAAAA".colorize(:light_red)
      puts "\\"
      print "             /"
      print "AAAAAAAAA".colorize(:light_red)
      puts "\\"
      print "            /"
      print "AAAAAAAAAAA".colorize(:light_yellow)
      puts "\\"
      print "          /"
      print "AAAAAAAAAAAAAAA".colorize(:light_yellow)
      puts "\\"
      print "         /"
      print "AAAAAAAAAAAAAAAAA".colorize(:red)
      puts "\\"
      print "        /"
      print "AAAAAAAAAAAAAAAAAAA".colorize(:red)
      puts "\\"
    when 0
      puts "\n                      ooO"
      puts "                     ooOOOo"
      puts "                   oOOOOOOoooo"
      print "                 ooOOOooo"
      puts "  oooo".blink
      print "\n                /"
      print "AAA".colorize(:light_red)
      puts "\\"
      print "               /"
      print"AAAAA".colorize(:light_yellow)
      puts "\\"
      print "              /"
      print "AAAAAAA".colorize(:light_red)
      puts "\\"
      print "             /"
      print "AAAAAAAAA".colorize(:light_red)
      print "\\"
      puts "          AAAAH! RUN FOR YOUR LIVES!"
      print "            /"
      print "AAAAAAAAAAA".colorize(:light_yellow)
      print "\\"
      puts "               /"
      print "          /"
      print "AAAAAAAAAAAAAAA".colorize(:light_yellow)
      print "\\"
      puts "   	 o           o"
      print "         /"
      print "AAAAAAAAAAAAAAAAA".colorize(:red)
      print "\\"
      puts "    /-    o     /-"
      print "        /"
      print "AAAAAAAAAAAAAAAAAAA".colorize(:red)
      print "\\"
      puts "  /\\   -/-    /\\"
      puts "                                    /\\"
    end
  end

end

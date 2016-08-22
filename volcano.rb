require "colorize"

class Volcano

# add to game directions: try to guess the correct letters of the secret word before the volcano erupts!

  def initialize(score)
    # use case or if statement to return appropriate image

    # art = volcano.new(points)
    # case score
    # when 5
    #   print ...
    # when 4
    #   print ...
    # ...
    # end



  end

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

require 'colorize'

class Flower

  def initialize(buds)
    @buds = buds
  end

  def flower
    puts

    case @buds

    when 7
      puts "  (@)   (@)".colorize(:red)
      puts "(@)(@)(@)(@)(@)".colorize(:red)
    when 6
      puts  "  (@)".colorize(:red)
      puts  "(@)(@)(@)(@)(@)".colorize(:red)
    when 5
      puts  "  (@)".colorize(:red)
      puts  "(@)(@)(@)(@)".colorize(:red)
    when 4
      puts "(@)(@)(@)(@)".colorize(:red)
    when 3
      puts "   (@)(@)(@)".colorize(:red)
    when 2
      puts "   (@)   (@)".colorize(:red)
    when 1
      puts "   (@)".colorize(:red)
    when 0
      puts
    else
      puts "How did this get messed up!?"
    end

    puts '  ,\,\,|,/,/,'.colorize(:green)
    puts '     _'.colorize(:magenta) + '\|/'.colorize(:green) + '_'.colorize(:magenta)
    puts '    |_____|'.colorize(:magenta)
    puts '     |   |'.colorize(:magenta)
    puts "     |___|".colorize(:magenta)
  end
end

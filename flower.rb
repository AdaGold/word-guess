class Flower

  def initialize(buds)
    @buds = buds
  end

  def flower
    puts
    
    case @buds

    when 7
      puts "  (@)   (@)"
      puts "(@)(@)(@)(@)(@)"
    when 6
      puts  "  (@)"
      puts  "(@)(@)(@)(@)(@)"
    when 5
      puts  "  (@)"
      puts  "(@)(@)(@)(@)"
    when 4
      puts "(@)(@)(@)(@)"
    when 3
      puts "   (@)(@)(@)"
    when 2
      puts "   (@)   (@)"
    when 1
      puts "   (@)"
    when 0
      puts
    else
      puts "How did this get messed up!?"
    end

    puts '  ,\,\,|,/,/,'
    puts '     _\|/_'
    puts '    |_____|'
    puts '     |   |'
    puts "     |___|"
  end
end

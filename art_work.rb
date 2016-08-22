class ArtWork

  def initialize

  end

  def print_balloons(countdown)
    case countdown
    when 5
      five_b = File.open("five_balloons.txt")
      puts five_b.read
    when 4
      four_b = File.open("four_balloons.txt")
      puts four_b.read
    when 3
      three_b = File.open("three_balloons.txt")
      puts three_b.read
    when 2
      two_b = File.open("two_balloons.txt")
      puts two_b.read
    when 1
      one_b = File.open("one_balloon.txt")
      puts one_b.read
    when 0 # game over - lose!
      zero_b = File.open("game_over.txt")
      puts zero_b.read
    end
  end

  def print_win_graphic #TODO add to win sequence
    win_image = File.open("you_win_graphic.txt")
    puts win_image.read
  end
end

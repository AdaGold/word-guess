class Art
  attr_accessor :petal_iterator
  attr_accessor :petals
  attr_accessor :pot

  def initialize
    @petal_iterator = 10

    @petals = "
 @ @ @ @ @"
@pot = "
 |,|,|,|,|
   _\\|/_
  |_____|
   |   |
   |___|
"
  end

  def counter
    return @petal_iterator
  end

  def remove_petal
    # Problems with ASCII art spacing in string shifts petals at times
    @petal_iterator -= 2
    @petals = @petals.slice!(1..@petal_iterator)
  end

  def show_art
    puts
    puts @petals
    puts @pot
    puts
  end

end

class Art
  attr_accessor :petal_iterator
  attr_accessor :petals
  attr_accessor :pot

  def initialize
    @petal_iterator = 12

    @petals = "
@ @  @  @ @"
@pot = "
 \\,\\,|,/,/
   _\\|/_
  |_____|
   |   |
   |___|
"
  end

  def remove_petal
    @petal_iterator -= 2
    @petals = @petals.slice!(1..@petal_iterator)
  end

  def show_art
    puts @petals
    puts @pot
  end

end

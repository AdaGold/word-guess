class ArtWork

  def initialize(countdown)
    @countdown = countdown
  end

  def balloon_five
    # puts "This is an image of five balloons. Really."
    five_b = File.open("balloon_source.txt")
    puts five_b.read
  end
end

a = ArtWork.new(1)
a.balloon_five

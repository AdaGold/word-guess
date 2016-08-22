class Levels
  attr_accessor :level

  def initialize(choice)
      @level = choice
  end


def difficulty
  if @level == "a"
    word = ["panda", "snow", "apple", "clean", "hand", "ocean", "milk"].sample
  elsif @level == "b"
    word = ["computer", "rainbow", "elephant", "pancake", "kitchen", "skyscraper", "bootcamp"].sample
  elsif @level == "c"
    word = ["snowcone", "whimsical", "shoestring", "rigatoni", "surplus", "monolith", "unix"].sample
  end
  return word
end


end

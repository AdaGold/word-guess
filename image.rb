class Image

  def initialize
    @image_array = ["▄██████████████▄▐█▄▄▄▄█▌",
                  "██████▌▄▌▄▐▐▌███▌▀▀██▀▀",
                  "████▄█▌▄▌▄▐▐▌▀███▄▄█▌",
                  "▄▄▄▄▄██████████████",
                  "▀▀▀▀█████████████▀"]
  end

  def print_image(lines) #Take in the number of lines from the user's incorrect answers and print that number of lines of the image array
      puts @image_array[0..lines-1] #If the user gets a correct guess on the first try, this prints the whole whale. Oops. 

  end


end

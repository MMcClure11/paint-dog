class PaintDog

  def initialize
    @word = words.sample
    @lives = 7
    @word_teaser = ""
    @word.first.size.times do 
      @word_teaser += "_ "
    end
  end

  def words 
    [
      ["cricket", "A game played by gentlemen"],
      ["jogging", "We are not walking..."],
      ["celebrate", "Remembering special moments"],
      ["continent", "There are 7 of these"],
      ["exotic", "Not from around here..."],
    ]
  end

  def print_teaser
    puts @word_teaser
  end

  def play
    #ask user for a letter
    puts "New game started... your word is #{ @word.first.size } characters long"
    puts "To exit the game at any point type 'exit'"
    print_teaser
  end

end
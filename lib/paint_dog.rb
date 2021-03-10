class PaintDog

  def initialize
    @word = words.sample
    @lives = 7
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


  def play
    #ask user for a letter
    puts "New game started... your word is #{ @word.first.size } characters long"
    puts "To exit the game at any point type 'exit'"

  end

end
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

  def print_teaser last_guess = nil
    update_teaser(last_guess) unless last_guess.nil?
    puts @word_teaser
  end

  def make_guess
    if @lives > 0
      puts "Enter a letter"
      guess = gets.chomp

      good_guess = @word.first.include? guess 

      if guess == "exit"
        puts "Thanks for playing!"

      elsif good_guess
        puts "You are correct!"
        print_teaser guess
        make_guess
      end
    else 
      puts "Game over... better luck next time!"
    end
  end

  def play
    #ask user for a letter
    puts
    puts "New game started... your word is #{ @word.first.size } characters long"
    puts
    puts "To exit the game at any point type 'exit'"
    print_teaser

    puts
    puts "Clue: #{ @word.last }"

    make_guess
  end

end
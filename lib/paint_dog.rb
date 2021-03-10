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

  def update_teaser last_guess
    new_teaser = @word_teaser.split

    new_teaser.each_with_index do |letter, index|
      #replace blank values with guessed letter if matches letter in word
      if letter == "_" && @word.first[index] == last_guess
        new_teaser[index] = last_guess
      end
    end

    @word_teaser = new_teaser.join(" ")
  end

  def make_guess
    if @lives > 0
      puts "Enter a letter"
      guess = gets.chomp

      good_guess = @word.first.include? guess 

      if guess == "exit"
        puts "Thanks for playing!"

      elsif guess.length > 1
        puts "only guess one letter at a time please!"
        make_guess

      elsif good_guess
        puts "You are correct!"

        print_teaser guess

        if @word.first === @word_teaser.split.join
          puts "@word_teaser: #{@word_teaser}"
          puts "@word_teaser.split: #{@word_teaser.split}"
          puts "@word_teaser.split.join: #{@word_teaser.split.join}"
          puts "@word.first:  #{@word.first}"
          puts "Congratulations... you have won this round!"
        else
          make_guess
        end
      else
        @lives -= 1
        puts "Sorry... you have #{ @lives } chances to paint the dog. Try again!"
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
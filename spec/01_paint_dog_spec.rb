require_relative '../lib/paint_dog.rb'

describe './lib/paint_dog.rb' do 
  describe PaintDog do 
    describe '#initialize' do 
      it 'assigns an instance variable @word to a random word from the words array' do 
        game = PaintDog.new
        words = [
          ["cricket", "A game played by gentlemen"],
          ["jogging", "We are not walking..."],
          ["celebrate", "Remembering special moments"],
          ["continent", "There are 7 of these"],
          ["exotic", "Not from around here..."],
        ]
        word = words.sample
        expect(game.instance_variable_get(:@word)).to eql(word)
      end
    end
  end
end
require_relative '../lib/paint_dog.rb'

describe './lib/paint_dog.rb' do 
  describe PaintDog do 
    describe '#initialize' do 
      it 'assigns an instance variable @word to a random word from the words array' do 
        game = PaintDog.new
        word = ["exotic", "Not from around here..."]
        expect(game.instance_variable_get(:@word)).to eql(word)
      end
    end
  end
end
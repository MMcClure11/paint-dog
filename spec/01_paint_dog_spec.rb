require_relative '../lib/paint_dog.rb'

describe './lib/paint_dog.rb' do 
  describe PaintDog do 

    describe '#initialize' do 
      before(:each) do 
        @game = PaintDog.new
      end
      it 'assigns an instance variable @word to a random word from the words array' do 
        word = ["exotic", "Not from around here..."]
        expect(@game.instance_variable_get(:@word)).to eql(word)
      end

      it 'assigns an instance variable @lives to 7' do 
        expect(@game.instance_variable_get(:@lives)).to eql(7)
      end
    end
  end
end
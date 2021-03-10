require_relative '../lib/paint_dog.rb'

describe './lib/paint_dog.rb' do 
  describe PaintDog do 
    describe '#play' do 
      it 'asks for players to input a letter'  do
        game = PaintDog.new 
        allow($stdout).to receive(:puts)
        expect(game).to receive(:gets).at_least(:once).and_return("a")

        game.play
      end
    end
  end
end
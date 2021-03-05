describe "bin/paint_dog" do 
  it 'instantiates an instance of PaintDog' do 
    game = PaintDog.new

    allow($stdout).to receive(:puts)
    allow(game).to receive(:play)
    allow(game).to receive(:gets).and_return("1")

    expect(PaintDog).to receive(:new).and_return(game)
    
    run_file("./bin/paint_dog")
  end
end
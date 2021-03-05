describe "bin/paint_dog" do 
  it 'instantiates an instance of PaintDog' do 
    game = PaintDog.new
    expect(PaintDog).to receive(:new).and_return(game)
    run_file("./bin/paint_dog")
  end
end
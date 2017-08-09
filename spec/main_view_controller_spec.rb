describe "Check the main view" do
  tests MainViewController
  
  it "has a correct label" do
    view('Greet me').should.not == nil
  end

  it "open a popup" do
    tap 'Greet me'

    view('Greeting').should.not == nil
  end
end
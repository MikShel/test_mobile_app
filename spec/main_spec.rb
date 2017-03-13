describe "Application 'test_mobile_app'" do
  # before do
  #   @app = UIApplication.sharedApplication
  # end

  it "has one window" do
    # binding.pry
    app = UIApplication.sharedApplication
    app.windows.size.should == 1
  end
end

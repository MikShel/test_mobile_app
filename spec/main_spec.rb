describe "Application 'test_mobile_app'" do
  it "has one window" do
    app = UIApplication.sharedApplication
    app.windows.size.should == 1
  end
end

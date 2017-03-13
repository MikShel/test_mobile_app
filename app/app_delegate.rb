class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'test_mobile_app'
    rootViewController.view.backgroundColor = UIColor.blackColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    alert = UIAlertView.new
    alert.message = "Hello World1!"
    button = UIButton.new
    #  button.show
    alert.show

    true
  end
end

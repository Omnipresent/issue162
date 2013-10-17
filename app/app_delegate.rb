class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    nav = UINavigationController.alloc.initWithRootViewController(HomeController.alloc.initWithNibName(nil, bundle:nil))
    nav.wantsFullScreenLayout = true
    @window.rootViewController = nav
    true
  end
end

class HomeController < UIViewController


  def viewWillAppear(animated)
    super
    self.navigationController.navigationBarHidden = true
  end
  def viewWillDisappear(animated)
    super
    self.navigationController.navigationBarHidden = false
  end

  def viewDidLoad
    super

    container = view.frame.size


    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button.center = CGPointZero
    button.frame = [[container.width/2-button.frame.size.width/2,150], [280,50]]
    button.setTitle("Click Me", forState: UIControlStateNormal)
    button.addTarget(self, 
                     action: "moveToChildView:",
                     forControlEvents: UIControlEventTouchUpInside)

    Motion::Layout.new do |layout|
      layout.view view
      layout.subviews "button" => button
    end

  end

  def moveToChildView (sender)
    self.parentViewController.pushViewController(FormController.alloc.initWithSomething, animated:true)
  end
end

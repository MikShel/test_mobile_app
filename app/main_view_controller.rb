# You have to inherit from UIViewController
class MainViewController < UIViewController

  # Called to load the view
  # This is where you instantiate your view and set it as the controller's view.
  def loadView
    # Set the view for the controller
    # We don't need anything special for now. So we'll directly instantiate an object of UIView
    self.view = UIView.new
  end

  # Called after the view is loaded
  def viewDidLoad
    # A text input field instantiated with initWithFrame
    @input_field = UITextField.alloc.initWithFrame([[50, 50], [200, 40]])

    # Set the text color using the UIColor class which offers named colors
    @input_field.textColor = UIColor.blackColor

    # Set the background color for the text field
    @input_field.backgroundColor = UIColor.whiteColor

    # Set the border style of the text field to rounded rectangle
    # We need a rounded border, defined by the constant UITextBorderStyleRoundedRect
    @input_field.setBorderStyle UITextBorderStyleRoundedRect

    # Add the text field to the controller's view
    self.view.addSubview @input_field


    # Initiate button with button type
    @action_button = UIButton.buttonWithType UIButtonTypeRoundedRect

    # Set the title for the default UI state, which is normal
    # Normal UI state is defined by the constant UIControlStateNormal
    @action_button.setTitle "Greet me", forState: UIControlStateNormal

    # Set the frame for the button
    @action_button.frame = [[100, 100], [100, 50]]

    # Add an event for the button when touched
    # 'self' refers to the handler class for the action in which the callback is defined
    # greet_user is the method is that'll be called when the event happens
    # The touch state is defined by the constant UIControlEventTouchUpInside
    @action_button.addTarget(self,
      action: :greet_user,
      forControlEvents: UIControlEventTouchUpInside)

    # Add the button to the view
    self.view.addSubview @action_button
  end

  # The touch callback for the button
  def greet_user
    # Instantiate an alert box with the title and a greeting message
    # And a text for the cancel button
    # Which will say "ok"
    # The arguments from the second to last, are not Ruby hash arguments
    # They are Objective-C style arguments.
    # You can't randomize the order or skip them if they are nil
    @alert_box = UIAlertView.alloc.initWithTitle("Greeting",
        message:"Hi #{@input_field.text}",
        delegate: nil,
        cancelButtonTitle: "ok",
        otherButtonTitles: nil)

    # Show it to the user
    @alert_box.show
  end
end
RFSegue - Add missing functions for UIStoryboardSegue
=====
<small>*English* [简体中文](Readme~zh-hans.md)</small>

Source & Destination Delegate
-----
By default, only UIViewController's `prepareForSegue:` can notify us the segue will perform. But We can't know when the segue performed. At the same time, you can't stop the segue to be preformed on iOS5.

So we provide `RFSegueSourceDelegate` and `RFSegueDestinationDelegate`. You can decide wether should perform a segue or not. Get notify when a segue will perform and did perform.

Tips: After iOS6, you can use `shouldPerformSegueWithIdentifier:sender:` instead of `RFSegueShouldPerform:`.

Return buttons
-----
Using segue we can transit between view controllers conveniently from the outside in. But how to return? Generally we must write some code. We had subclassed `UIButton` and `UIBarButtonItem` to make this as convenient as segue. Now you only need change button class, and drag `masterViewController` IBOutlet to current view controller. IBAction or addTarget no longer needed.

Also, `RFSegueReturnDelegate` provide necessary notifications and control.
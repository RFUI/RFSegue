RFSegue - 提供 UIStoryboardSegue 缺失的功能
=====
<base href="//github.com/RFUI/RFSegue/blob/master/" />
<small>[English](Readme.md) *简体中文*</small>

Source & Destination Delegate
-----
默认情况，只有 UIViewController 的 `prepareForSegue:` 可以告诉我们一个 segue 将要触发了。但是何时执行完我们不得而知。在 iOS5 上我们甚至都不能阻止一个 segue 的执行。

所以，我们提供了 `RFSegueSourceDelegate` 和 `RFSegueDestinationDelegate`，通过它们你可以决定是否执行 segue，并在 segue 将要、已经执行时得到通知。

Tips: iOS6 以后你可以用 `shouldPerformSegueWithIdentifier:sender:` 替代 `RFSegueShouldPerform:`。

返回按钮
-----
通过 segue 我们可以便捷地在视图间从外向内跳转，但是如何返回呢？通常只有手写代码。为了像 segue 一样方便，现在你只需在 Storyboard 中修改按钮的类型，无需任何其它操作！`UIBarButtonItem` 需要额外拖拽 `masterViewController` 的连线到它的 view controller 上。无需添加 IBAction 或 addTarget。

同样，`RFSegueReturnDelegate` 也提供了必要的通知和控制。
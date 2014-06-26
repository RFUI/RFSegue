RFSegue Change Log
=====

* RFSegue won't send delegate notice between RFPerform automatically. You should call `noticeDelegateWillPerform` and `noticeDelegateDidPerformed` manually.
* Remove `RFSeguePopButton` and `RFSegueDismissModalButton`'s masterViewController property.

2.2
-----
* IBOutlet no longer needs for RFSegueDismissModalButton and RFSeguePopButton.
* Minor changes.

2.1
----
* New RFContainedSegue.

2.0
-----
* Rewrite confused segue delegate.
* Add shouldPerform method to integrate logical judgment.

1.1
-----
* New delegate header file.
* New RFSegueReturnDelegate for return buttons.
* Move return buttons to a folder.
* Add LICENSE file.
* Add introduction document.

1.0
-----
init
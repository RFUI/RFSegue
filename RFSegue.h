/*!
    RFSegue
 
    Copyright (c) 2012-2014, 2016 BB9z
    https://github.com/RFUI/RFSegue

    The MIT License (MIT)
    http://www.opensource.org/licenses/mit-license.php
*/

#import <UIKit/UIKit.h>
#import "RFSegueDelegate.h"

/**
 RFSegug add missing features for UIStoryboardSegue.
 
 Feature:

 - Determines whether the segue with the specified identifier should be triggered on iOS 5.
 
 - Experimental load scene from another storyboards.

 You must overrided `RFPerform` to use it.
 */
NS_CLASS_AVAILABLE_IOS(5_0) @interface RFSegue : UIStoryboardSegue

@property (nonatomic, nullable, copy) NSDictionary *userInfo;

/// Should not be overrided, see `RFPerform`
- (void)perform;

/**
 Subclasses should always override this method instead of `perform` and use it to perform the animations from the views in sourceViewController to the views in destinationViewController.
 
 You should call `noticeDelegateWillPerform` and `noticeDelegateDidPerformed` manually to notice sourceViewController and destinationViewController about the reciver’s stauts.
 */
- (void)RFPerform;

@end

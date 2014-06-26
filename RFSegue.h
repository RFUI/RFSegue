/*!
    RFSegue
    ver 2.3
 
    Copyright (c) 2012-2014 BB9z
    https://github.com/RFUI/RFSegue

    The MIT License (MIT)
    http://www.opensource.org/licenses/mit-license.php
*/

#import "RFUI.h"
#import "RFSegueDelegate.h"

/** RFSegug add missing features for UIStoryboardSegue. 
 
 Such as determines whether the segue with the specified identifier should be triggered on iOS 5. Notice source and destination view controller a segue will or did performed.

 You must overrided `RFPerform` to use it.
 */
NS_CLASS_AVAILABLE_IOS(5_0) @interface RFSegue : UIStoryboardSegue <
    RFForSubclass
>

@property (strong, nonatomic) NSDictionary *userInfo;

/// Should not be overrided, see `RFPerform`
- (void)perform;

/**
 Subclasses should always override this method instead of `perform` and use it to perform the animations from the views in sourceViewController to the views in destinationViewController.
 
 You should call `noticeDelegateWillPerform` and `noticeDelegateDidPerformed` manually to notice sourceViewController and destinationViewController about the reciver’s stauts.
 */
- (void)RFPerform;

- (void)noticeDelegateWillPerform;
- (void)noticeDelegateDidPerformed;

/**
 Determines whether the segue should be triggered.
 
 @discussion Subclass can override this method for additional check. Super must be called.
 */
- (BOOL)shouldPerform;

@end

extern NSTimeInterval RFSegueNavigationTransitionDuration;

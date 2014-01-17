/*!
    RFContainedSegue
    RFSegue

    Copyright (c) 2013 BB9z
    https://github.com/RFUI/RFSegue

    The MIT License (MIT)
    http://www.opensource.org/licenses/mit-license.php
 */

#import "RFSegue.h"

/**
 This segue is used for adding another view controller´s view to current view controller´s special view. Usefull if you have a custom interface-flow controll like a custom tab implementation.
 
 You should declare `containedViewHolder` and `containedViewController` properties for the `sourceViewController`.
 
 The default implementation just remove previous view controller´s view and add the one´s, no animations. You can override this class to add additional animation effects.
 */
@interface RFContainedSegue : RFSegue
@end

@protocol RFContainedSegueSourceDelegate <NSObject>
@required
@property (weak, nonatomic) IBOutlet UIView *containedViewHolder;
@property (strong, nonatomic) UIViewController *containedViewController;

@optional
/// The priority is higher than `RFSegueShouldPerform` delegate method.
- (BOOL)RFContainedSegueShouldPerformWhileControllerHavingSameClass:(RFContainedSegue *)sender;

@end



/*!
    RFSegueDelegate
    RFSegue

    Copyright (c) 2012-2014, 2016 BB9z
    https://github.com/RFUI/RFSegue

    The MIT License (MIT)
    http://www.opensource.org/licenses/mit-license.php
 */

@class RFSegue;

#pragma mark -
@protocol RFSegueSourceDelegate <NSObject>
@optional
- (BOOL)RFSegueShouldPerform:(RFSegue *)segue;

/// Should called before destinationViewController receive `viewWillAppear`.
- (void)RFSegueWillPerform:(RFSegue *)segue DEPRECATED_ATTRIBUTE;

/// Should called after destinationViewController receive `viewDidAppear`.
- (void)RFSegueDidPerform:(RFSegue *)segue DEPRECATED_ATTRIBUTE;

@end

#pragma mark -
@protocol RFSegueDestinationDelegate <NSObject>
@optional
/// Called after sourceViewController recive `RFSegueWillPerform:`. And before destinationViewController receive `viewWillAppear`.
- (void)RFSegueWillAppear:(RFSegue *)segue DEPRECATED_ATTRIBUTE;

/// Called after sourceViewController recive `RFSegueDidPerform:`. And after destinationViewController receive `viewDidAppear`.
- (void)RFSegueDidAppear:(RFSegue *)segue DEPRECATED_ATTRIBUTE;
@end

#pragma mark -
@protocol RFSegueReturnDelegate <NSObject>
@optional
- (BOOL)RFSegueShouldReturn:(id)sender;
- (void)RFSegueWillReturn:(id)sender;
- (void)RFSegueDidReturn:(id)sender;

@end


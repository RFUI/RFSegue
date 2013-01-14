/*!
    RFSegueDelegate
    RFSegue

    Copyright (c) 2012-2013 BB9z
    http://github.com/bb9z/RFSegue

    The MIT License (MIT)
    http://www.opensource.org/licenses/mit-license.php
 */

@class RFSegue;

#pragma mark -
@protocol RFSegueSourceDelegate <NSObject>
@optional
- (BOOL)RFSegueShouldPerform:(RFSegue *)segue;
- (void)RFSegueWillPerform:(RFSegue *)segue;
- (void)RFSegueDidPerformed:(RFSegue *)segue;

@end

#pragma mark -
@protocol RFSegueDestinationDelegate <NSObject>
@optional
- (void)RFSegueDidPerformed:(RFSegue *)segue userInfo:(NSDictionary *)userInfo;

@end

#pragma mark -
@protocol RFSegueReturnDelegate <NSObject>
@optional
- (void)RFSegueWillReturn:(id)sender;
- (void)RFSegueDidReturn:(id)sender;

@end


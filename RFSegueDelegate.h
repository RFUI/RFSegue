/*!
    RFSegueDelegate
    RFSegue

    Copyright (c) 2012-2014, 2016, 2018 BB9z
    https://github.com/RFUI/RFSegue

    The MIT License (MIT)
    http://www.opensource.org/licenses/mit-license.php
 */

@class RFSegue;

@protocol RFSegueReturnDelegate <NSObject>
@optional
- (BOOL)RFSegueShouldReturn:(id)sender;

@end

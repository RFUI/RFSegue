/*!
    RFSegueDismissModalButton
    RFSegue

    Copyright (c) 2012-2013 BB9z
    http://github.com/bb9z/RFSegue

    The MIT License (MIT)
    http://www.opensource.org/licenses/mit-license.php
 */

#import "RFUI.h"
#import "RFSegueDelegate.h"

@interface RFSegueDismissModalButton : UIButton
@property (RF_WEAK, nonatomic) IBOutlet UIViewController<RFSegueReturnDelegate> *masterViewController;

@end

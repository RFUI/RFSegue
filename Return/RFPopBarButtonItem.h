/*!
    RFPopBarButtonItem
    RFSegue

    Copyright (c) 2012-2014 BB9z
    https://github.com/RFUI/RFSegue

    The MIT License (MIT)
    http://www.opensource.org/licenses/mit-license.php
 */

#import <UIKit/UIKit.h>
#import "RFSegueDelegate.h"

@interface RFPopBarButtonItem : UIBarButtonItem
@property (weak, nonatomic) IBOutlet UIViewController<RFSegueReturnDelegate> *masterViewController;

@end

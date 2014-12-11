/*!
    RFSegueExternLink
    RFSegue

    Copyright (c) 2014 BB9z
    https://github.com/RFUI/RFSegue

    The MIT License (MIT)
    http://www.opensource.org/licenses/mit-license.php
 */

#import "RFSegueExternLink.h"

/**
 An exmaple view controller confirm RFSegueExternLink.
 
 Used as a placeholder.
 */
@interface RFSegueExternalLinkViewController : UIViewController <
    RFSegueExternLink
>
@property (copy, nonatomic) IBInspectable NSString *externalStoryboardName;
@property (copy, nonatomic) IBInspectable NSString *externalScenceIdentifier;
@end

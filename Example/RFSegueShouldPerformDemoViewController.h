//
//  RFSegueShouldPerformDemoViewController.h
//  RFDemo
//
//  Created by BB9z on 6/26/14.
//  Copyright (c) 2014 RFUI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RFSegueDelegate.h"

@interface RFSegueShouldPerformDemoViewController : UIViewController <
    RFSegueSourceDelegate
>
@property (weak, nonatomic) IBOutlet UISwitch *shouldSwitch;
@end

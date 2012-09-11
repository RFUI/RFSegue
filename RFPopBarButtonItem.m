//
//  RFPopBarButtonItem.m
//  mobook
//
//  Created by BB9z on 12-9-10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "RFPopBarButtonItem.h"

@implementation RFPopBarButtonItem
- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.target = self;
    self.action = @selector(onBarButtonTapped);
}

- (void)onBarButtonTapped {
    if (self.masterViewController) {
        [self.masterViewController.navigationController popViewControllerAnimated:YES];
    }
}
@end

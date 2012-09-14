//
//  RFPopButton.m
//  CrazyPurse
//
//  Created by 夏光华 on 12-9-14.
//  Copyright (c) 2012年 mobochina. All rights reserved.
//

#import "RFPopButton.h"

@implementation RFPopButton

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self addTarget:self action:@selector(onBarButtonTapped) forControlEvents:UIControlEventTouchUpInside];
}

- (void)onBarButtonTapped {
    if (self.masterViewController) {
        [self.masterViewController.navigationController popViewControllerAnimated:YES];
    }
}
@end

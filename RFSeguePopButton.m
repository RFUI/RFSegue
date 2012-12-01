
#import "RFSeguePopButton.h"

@implementation RFSeguePopButton

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self addTarget:self action:@selector(onButtonTapped) forControlEvents:UIControlEventTouchUpInside];
}

- (void)onButtonTapped {
    if (self.masterViewController) {
        [self.masterViewController.navigationController popViewControllerAnimated:YES];
    }
}

@end

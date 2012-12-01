
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

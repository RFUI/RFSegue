
#import "RFDismissModalBarButtonItem.h"

@implementation RFDismissModalBarButtonItem

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.target = self;
    self.action = @selector(onBarButtonTapped);
}

- (void)onBarButtonTapped {
    if (self.masterViewController) {
        [self.masterViewController dismissModalViewControllerAnimated:YES];
    }
}

@end

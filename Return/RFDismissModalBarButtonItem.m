
#import "RFDismissModalBarButtonItem.h"

@implementation RFDismissModalBarButtonItem

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.target = self;
    self.action = @selector(onBarButtonTapped);
}

- (void)onBarButtonTapped {
    if (self.masterViewController) {
        if ([self.masterViewController respondsToSelector:@selector(RFSegueWillReturn:)]) {
            [self.masterViewController RFSegueWillReturn:self];
        }
        [self.masterViewController dismissModalViewControllerAnimated:YES];
        if ([self.masterViewController respondsToSelector:@selector(RFSegueDidReturn:)]) {
            [self.masterViewController RFSegueDidReturn:self];
        }
    }
}

@end

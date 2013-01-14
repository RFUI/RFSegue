
#import "RFDismissModalBarButtonItem.h"

@implementation RFDismissModalBarButtonItem

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.target = self;
    self.action = @selector(onBarButtonTapped);
}

- (void)onBarButtonTapped {
    if (!self.masterViewController) {
        dout_warning(@"RFDismissModalBarButtonItem: masterViewController not set for %@", self);
        return;
    }
    
    BOOL shouldReturn = YES;
    if ([self.masterViewController respondsToSelector:@selector(RFSegueShouldReturn:)]) {
        shouldReturn = [self.masterViewController RFSegueShouldReturn:self];
    }
    
    if (shouldReturn) {
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

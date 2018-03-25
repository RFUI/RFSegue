
#import "RFDismissModalBarButtonItem.h"
#import "dout.h"

@implementation RFDismissModalBarButtonItem

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.target = self;
    self.action = @selector(onBarButtonTapped);
}

- (void)onBarButtonTapped {
    UIViewController<RFSegueReturnDelegate> *master = self.masterViewController;
    if (!master) {
        dout_warning(@"RFDismissModalBarButtonItem: masterViewController not set for %@", self);
        return;
    }
    
    if ([master respondsToSelector:@selector(RFSegueShouldReturn:)]) {
        if (![master RFSegueShouldReturn:self]) return;
    }
    [master dismissViewControllerAnimated:YES completion:nil];
}

@end

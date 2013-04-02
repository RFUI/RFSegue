
#import "RFSeguePopButton.h"

@implementation RFSeguePopButton
@synthesize masterViewController = _masterViewController;

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self addTarget:self action:@selector(onButtonTapped) forControlEvents:UIControlEventTouchUpInside];
}

- (void)onButtonTapped {
    UIViewController<RFSegueReturnDelegate> *master = self.masterViewController;
    if (!master) {
        dout_warning(@"RFDismissModalBarButtonItem: masterViewController not set for %@", self);
        return;
    }
    
    BOOL shouldReturn = YES;
    if ([master respondsToSelector:@selector(RFSegueShouldReturn:)]) {
        shouldReturn = [master RFSegueShouldReturn:self];
    }
    
    if (shouldReturn) {
        if ([master respondsToSelector:@selector(RFSegueWillReturn:)]) {
            [master RFSegueWillReturn:self];
        }
        [master.navigationController popViewControllerAnimated:YES];
        if ([master respondsToSelector:@selector(RFSegueDidReturn:)]) {
            [master RFSegueDidReturn:self];
        }
    }
}

@end

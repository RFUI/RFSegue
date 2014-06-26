
#import "RFPopBarButtonItem.h"
#import "RFSegue.h"

@implementation RFPopBarButtonItem

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.target = self;
    self.action = @selector(onBarButtonTapped);
}

- (void)onBarButtonTapped {
    UIViewController<RFSegueReturnDelegate> *master = self.masterViewController;
    if (!master) {
        dout_warning(@"RFPopBarButtonItem: masterViewController not set for %@", self);
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
        dispatch_after_seconds(RFSegueNavigationTransitionDuration, ^{
            if ([master respondsToSelector:@selector(RFSegueDidReturn:)]) {
                [master RFSegueDidReturn:self];
            }
        });
    }
}

@end

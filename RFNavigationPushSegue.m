
#import "RFNavigationPushSegue.h"

@implementation RFNavigationPushSegue

- (void)RFPerform {
    [self noticeDelegateWillPerform];
    [[(UIViewController *)self.sourceViewController navigationController] pushViewController:self.destinationViewController animated:YES];
    dispatch_after_seconds(RFSegueNavigationTransitionDuration, ^{
        [self noticeDelegateDidPerformed];
    });
}

@end


#import "RFNavigationPushAsRootSegue.h"
#import "RFDispatch.h"

@implementation RFNavigationPushAsRootSegue

- (void)RFPerform {
    [self noticeDelegateWillPerform];
    [[(UIViewController *)self.sourceViewController navigationController] setViewControllers:@[self.destinationViewController] animated:YES];
    dispatch_after_seconds(RFSegueNavigationTransitionDuration, ^{
        [self noticeDelegateDidPerformed];
    });
}

@end


#import "RFNavigationPushAsRootSegue.h"

@implementation RFNavigationPushAsRootSegue

- (void)RFPerform {
    [self noticeDelegateWillPerform];
    [[(UIViewController *)self.sourceViewController navigationController] setViewControllers:@[self.destinationViewController] animated:YES];
    dispatch_after_seconds(0.3, ^{
        [self noticeDelegateDidPerformed];
    });
}

@end

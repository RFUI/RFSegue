
#import "RFNavigationPushReplaceSegue.h"

@implementation RFNavigationPushReplaceSegue

- (void)RFPerform {
    [self noticeDelegateWillPerform];
    UINavigationController *nav = [self.sourceViewController navigationController];
    NSMutableArray *vcs = [nav.viewControllers mutableCopy];
    [vcs removeLastObject];
    [vcs addObject:self.destinationViewController];
    [nav setViewControllers:vcs animated:YES];
    dispatch_after_seconds(RFSegueNavigationTransitionDuration, ^{
        [self noticeDelegateDidPerformed];
    });
}

@end


#import "RFNavigationPushReplaceSegue.h"
#import "RFDispatch.h"
#import "UINavigationController+RFKit.h"

@implementation RFNavigationPushReplaceSegue

- (void)RFPerform {
    [self noticeDelegateWillPerform];
    UINavigationController *nav = [self.sourceViewController navigationController];
    [nav setTopViewController:self.destinationViewController animated:YES];
    dispatch_after_seconds(RFSegueNavigationTransitionDuration, ^{
        [self noticeDelegateDidPerformed];
    });
}

@end

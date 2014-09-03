
#import "RFPresentFromParentSegue.h"

@implementation RFPresentFromParentSegue

- (void)RFPerform {
    [self noticeDelegateWillPerform];
    [[self.sourceViewController parentViewController] presentViewController:self.destinationViewController animated:YES completion:^{
        [self noticeDelegateDidPerformed];
    }];
}

@end


#import "RFPresentSegue.h"

@implementation RFPresentSegue

- (void)RFPerform {
    [self noticeDelegateWillPerform];
    [self.sourceViewController presentViewController:self.destinationViewController animated:YES completion:^{
        [self noticeDelegateDidPerformed];
    }];
}

@end

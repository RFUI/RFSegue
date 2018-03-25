
#import "RFPresentFromParentSegue.h"

@implementation RFPresentFromParentSegue

- (void)RFPerform {
    [[self.sourceViewController parentViewController] presentViewController:self.destinationViewController animated:YES completion:nil];
}

@end

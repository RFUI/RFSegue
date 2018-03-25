
#import "RFPresentSegue.h"

@implementation RFPresentSegue

- (void)RFPerform {
    [self.sourceViewController presentViewController:self.destinationViewController animated:YES completion:nil];
}

@end

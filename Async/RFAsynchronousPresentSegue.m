
#import "RFAsynchronousPresentSegue.h"

@implementation RFAsynchronousPresentSegue

- (void)RFPerform {
    [(UIViewController *)self.sourceViewController presentViewController:self.destinationViewController animated:YES completion:nil];
}

@end

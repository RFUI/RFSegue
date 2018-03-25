
#import "RFNavigationPushSegue.h"

@implementation RFNavigationPushSegue

- (void)RFPerform {
    [[(UIViewController *)self.sourceViewController navigationController] pushViewController:self.destinationViewController animated:YES];
}

@end

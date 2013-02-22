
#import "RFNavigationPushAsRootSegue.h"

@interface RFNavigationPushAsRootSegue ()
@end

@implementation RFNavigationPushAsRootSegue

- (void)RFPerform {
    [[(UIViewController *)self.sourceViewController navigationController] setViewControllers:@[self.destinationViewController] animated:YES];
}

@end

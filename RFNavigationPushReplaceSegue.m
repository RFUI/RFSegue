
#import "RFNavigationPushReplaceSegue.h"
#import <RFKit/UINavigationController+RFKit.h>

@implementation RFNavigationPushReplaceSegue

- (void)RFPerform {
    UINavigationController *nav = [self.sourceViewController navigationController];
    [nav setTopViewController:self.destinationViewController animated:YES];
}

@end

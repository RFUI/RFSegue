
#import "RFAsynchronousPushAsRootSegue.h"

@implementation RFAsynchronousPushAsRootSegue

- (void)RFPerform {
    UINavigationController *nav = [self.sourceViewController navigationController];
    [nav setViewControllers:@[ self.destinationViewController ] animated:YES];
}

@end

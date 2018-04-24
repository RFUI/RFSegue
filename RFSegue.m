
#import "RFSegue.h"
#import <RFKit/RFRuntime.h>
#import <RFKit/UIDevice+RFKit.h>

@implementation RFSegue

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %p; sourceViewController: %@; destinationViewController: %@; identifier:%@; userInfo:%@>",
            NSStringFromClass([self class]),
            (void *)self,
            self.sourceViewController,
            self.destinationViewController,
            self.identifier,
            self.userInfo];
}

- (void)perform {
    [self RFPerform];
}

- (void)RFPerform {
    RFAssert(false, @"You should subclass RFSegue and override RFPerform.");
}

@end

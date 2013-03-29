
#import "RFSegue.h"

@implementation RFSegue
@synthesize userInfo;

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %p; sourceViewController: %@; destinationViewController: %@; identifier:%@; userInfo:%@>",
            NSStringFromClass([self class]),
            self,
            self.sourceViewController,
            self.destinationViewController,
            self.identifier,
            self.userInfo];
}

- (void)perform {
    if ([self.sourceViewController respondsToSelector:@selector(RFSegueShouldPerform:)]) {
        if (![self.sourceViewController RFSegueShouldPerform:self]) {
            return;
    }
    }

        if ([self.sourceViewController respondsToSelector:@selector(RFSegueWillPerform:)]) {
            [self.sourceViewController RFSegueWillPerform:self];
        }
        
        [self RFPerform];
        if ([self.sourceViewController respondsToSelector:@selector(RFSegueDidPerformed:)]) {
            [self.sourceViewController RFSegueDidPerformed:self];
        }
        if ([self.destinationViewController respondsToSelector:@selector(RFSegueDidPerformed:userInfo:)]) {
            [self.destinationViewController RFSegueDidPerformed:self userInfo:self.userInfo];
        }
    }
}

- (void)RFPerform {
    RFAssert(false, @"You should subclass RFSegue and override RFPerform.");
}

@end

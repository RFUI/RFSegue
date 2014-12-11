
#import "RFSegue.h"
#import "RFSegueExternLink.h"

//! REF: http://stackoverflow.com/a/24423494
NSTimeInterval RFSegueNavigationTransitionDuration = 0.51f;

@implementation RFSegue

+ (void)load {
    RFSegueNavigationTransitionDuration = RF_iOS7Before? 0.36f : 0.511f;
}

- (instancetype)initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController<RFSegueExternLink> *)destination {

    // Load from external storyboard
    if ([destination respondsToSelector:@selector(externalStoryboardName)]
        && [destination respondsToSelector:@selector(externalScenceIdentifier)]) {
        // Only load from external when storyboard name specified
        if (destination.externalStoryboardName) {
            UIStoryboard *sb = [UIStoryboard storyboardWithName:destination.externalStoryboardName bundle:nil];
            UIViewController *vc = destination.externalScenceIdentifier? [sb instantiateViewControllerWithIdentifier:destination.externalScenceIdentifier] : [sb instantiateInitialViewController];
            if (vc) {
                destination = (id)vc;
            }
        }
    }

    self = [super initWithIdentifier:identifier source:source destination:destination];
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %p; sourceViewController: %@; destinationViewController: %@; identifier:%@; userInfo:%@>",
            NSStringFromClass([self class]),
            self,
            self.sourceViewController,
            self.destinationViewController,
            self.identifier,
            self.userInfo];
}

- (BOOL)shouldPerform {
    BOOL shouldPerform = YES;
    if ([self.sourceViewController respondsToSelector:@selector(RFSegueShouldPerform:)]) {
        shouldPerform = [self.sourceViewController RFSegueShouldPerform:self];
    }
    return shouldPerform;
}

- (void)perform {
    if (![self shouldPerform]) return;

    [self RFPerform];
}

- (void)RFPerform {
    [self noticeDelegateWillPerform];
    RFAssert(false, @"You should subclass RFSegue and override RFPerform.");
    [self noticeDelegateDidPerformed];
}

- (void)noticeDelegateWillPerform {
    if ([self.sourceViewController respondsToSelector:@selector(RFSegueWillPerform:)]) {
        [self.sourceViewController RFSegueWillPerform:self];
    }
    if ([self.destinationViewController respondsToSelector:@selector(RFSegueWillAppear:)]) {
        [self.destinationViewController RFSegueWillAppear:self];
    }
}

- (void)noticeDelegateDidPerformed {
    if ([self.sourceViewController respondsToSelector:@selector(RFSegueDidPerform:)]) {
        [self.sourceViewController RFSegueDidPerform:self];
    }
    if ([self.destinationViewController respondsToSelector:@selector(RFSegueDidAppear:)]) {
        [self.destinationViewController RFSegueDidAppear:self];
    }
}

@end

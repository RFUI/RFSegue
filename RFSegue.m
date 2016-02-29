
#import "RFSegue.h"
#import "RFSegueExternLink.h"

//! REF: http://stackoverflow.com/a/24423494
NSTimeInterval RFSegueNavigationTransitionDuration = 0.51f;

@implementation RFSegue

+ (void)load {
    RFSegueNavigationTransitionDuration = RF_iOS7Before? 0.36f : 0.511f;
}

- (instancetype)initWithIdentifier:(NSString *_Nullable)identifier source:(UIViewController *)source destination:(UIViewController *)destination {
    UIViewController<RFSegueExternLink> *dst = (id)destination;
    // Load from external storyboard
    if ([dst respondsToSelector:@selector(externalStoryboardName)]
        && [dst respondsToSelector:@selector(externalScenceIdentifier)]) {
        // Only load from external when storyboard name specified
        if (dst.externalStoryboardName) {
            UIStoryboard *sb = [UIStoryboard storyboardWithName:dst.externalStoryboardName bundle:nil];
            UIViewController *vc = dst.externalScenceIdentifier? [sb instantiateViewControllerWithIdentifier:dst.externalScenceIdentifier] : [sb instantiateInitialViewController];
            if (vc) {
                dst = (id)vc;
            }
        }
    }

    self = [super initWithIdentifier:identifier source:source destination:dst];
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

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

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

#pragma clang diagnostic pop

@end

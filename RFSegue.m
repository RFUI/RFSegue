
#import "RFSegue.h"
#import "RFRuntime.h"
#import "RFSegueExternLink.h"
#import "UIDevice+RFKit.h"

@implementation RFSegue

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
            (void *)self,
            self.sourceViewController,
            self.destinationViewController,
            self.identifier,
            self.userInfo];
}

- (void)perform {
    if (![self shouldPerform]) return;

    [self RFPerform];
}

- (void)RFPerform {
    RFAssert(false, @"You should subclass RFSegue and override RFPerform.");
}

@end

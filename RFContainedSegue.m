
#import "RFContainedSegue.h"

@interface RFContainedSegue ()
@end

@implementation RFContainedSegue

- (BOOL)shouldPerform {
    if (![super shouldPerform]) {
        return NO;
    }
    
    if ([self.sourceViewController respondsToSelector:@selector(RFContainedSegueShouldPerformWhileControllerHavingSameClass:)]) {
        BOOL canBeSameClass = [self.sourceViewController RFContainedSegueShouldPerformWhileControllerHavingSameClass:self];
        BOOL isSameClass = ([self.destinationViewController class] == [[self.sourceViewController containedViewController] class]);
        if (!canBeSameClass && isSameClass) {
            return NO;
        }
    }
    return YES;
}

- (void)RFPerform {
    UIViewController<RFContainedSegueSourceDelegate> *vcContainer = self.sourceViewController;
    UIViewController *vcOld = vcContainer.containedViewController;
    UIViewController *vcNew = self.destinationViewController;
    
    if (vcOld) {
        [vcOld willMoveToParentViewController:nil];
        [vcOld.view removeFromSuperview];
        [vcOld removeFromParentViewController];
    }
    
    if (vcNew) {
        [vcContainer addChildViewController:vcNew];
        [vcContainer.containedViewHolder addSubview:vcNew.view resizeOption:RFViewResizeOptionFill];
        vcNew.view.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        [vcNew didMoveToParentViewController:vcContainer];
    }
    
    vcContainer.containedViewController = vcNew;
}

@end

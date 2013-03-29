
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
    if ([self.sourceViewController containedViewController]) {
        [[self.sourceViewController containedViewController] removeFromParentViewControllerAndView];
    }
    
    [self.sourceViewController addChildViewController:self.destinationViewController intoView:[self.sourceViewController containedViewHolder]];
    [self.destinationViewController view].autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
}

@end

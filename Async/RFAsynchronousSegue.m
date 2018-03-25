
#import "RFAsynchronousSegue.h"

@interface RFAsynchronousSegue ()
@property BOOL _RFAsynchronousSegue_executed;
@property void (^_RFAsynchronousSegue_selfRetain)(void);
@end

@implementation RFAsynchronousSegue

- (void)perform {
    if (self._RFAsynchronousSegue_executed) {
        return;
    }

    self._RFAsynchronousSegue_selfRetain = ^(void){
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-retain-cycles"
        __strong __unused id obj = self;
#pragma clang diagnostic pop
    };
}

- (void)RFPerform {
    [NSException raise:NSGenericException format:@"You should subclass RFAsynchronousSegue and override RFPerform or set performBlcok property."];
}

- (BOOL)fire {
    if (self._RFAsynchronousSegue_executed) return NO;
    self._RFAsynchronousSegue_executed = YES;
    if (self.performBlcok) {
        self.performBlcok(self);
    }
    else {
        [self RFPerform];
    }
    self._RFAsynchronousSegue_selfRetain = nil;
    return YES;
}

- (BOOL)cancel {
    if (self._RFAsynchronousSegue_executed) return NO;
    self._RFAsynchronousSegue_executed = YES;
    self.performBlcok = nil;
    self._RFAsynchronousSegue_selfRetain = nil;
    return YES;
}

@end

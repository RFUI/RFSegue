
#import "RFAsynchronousSegue.h"

@interface DMAsyncSegueViewController : UIViewController <
    UIAlertViewDelegate
>
@property (weak) IBOutlet UISwitch *push2ShouldPerformSegue;
@property (weak) RFAsynchronousSegue *segue;
@end

@implementation DMAsyncSegueViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if (![segue isKindOfClass:[RFAsynchronousSegue class]]) return;
    RFAsynchronousSegue *s = (id)segue;
    if ([s.identifier isEqualToString:@"PUSH1"]) {
        [s setPerformBlcok:^(RFAsynchronousSegue *this) {
            [[this.sourceViewController navigationController] pushViewController:this.destinationViewController animated:YES];
        }];
        self.segue = s;
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Push?" message:nil delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Confirm", nil];
        [alertView show];
    }
    else if ([s.identifier isEqualToString:@"PUSH2"]) {
        if (!self.push2ShouldPerformSegue.on) {
            [s cancel];
        }
        else {
            [s fire];
        }
    }
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if (buttonIndex) {
        [self.segue fire];
    }
    else {
        [self.segue cancel];
    }
}

@end

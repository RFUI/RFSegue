
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
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Push?" message:nil preferredStyle:UIAlertControllerStyleAlert];
        __weak __typeof(self)weakSelf = self;
        [alert addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [weakSelf.segue cancel];
        }]];
        [alert addAction:[UIAlertAction actionWithTitle:@"Confirm" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [weakSelf.segue fire];
        }]];
        [self presentViewController:alert animated:YES completion:nil];
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

@end

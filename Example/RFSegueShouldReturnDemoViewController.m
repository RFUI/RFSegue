
#import "RFSegueShouldReturnDemoViewController.h"

@interface RFSegueShouldReturnDemoViewController ()
@end

@implementation RFSegueShouldReturnDemoViewController

- (BOOL)RFSegueShouldReturn:(id)sender {
    if (self.shouldSwitch.on) {
        return YES;
    }
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Can not return now." message:@"Try turn the swithch on" preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
    [self presentViewController:alert animated:YES completion:nil];
    return NO;
}

@end

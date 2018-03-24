
#import "RFSegueShouldPerformDemoViewController.h"

@interface RFSegueShouldPerformDemoViewController ()
@end

@implementation RFSegueShouldPerformDemoViewController

- (BOOL)RFSegueShouldPerform:(RFSegue *)segue {
    if (self.shouldSwitch.on) {
        return YES;
    }
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Can not perform segue now" message:@"Try turn the swithch on" preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
    [self presentViewController:alert animated:YES completion:nil];
    return NO;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    self.shouldSwitch.on = NO;
}

@end

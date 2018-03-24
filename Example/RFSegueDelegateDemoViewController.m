
#import "RFSegueDelegateDemoViewController.h"

@interface RFSegueDelegateDemoViewController ()
@end

@implementation RFSegueDelegateDemoViewController

- (void)viewDidLoad {
    NSLog(@"viewDidLoad");
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"viewWillAppear");
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"viewDidAppear");
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"viewWillDisappear");
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    NSLog(@"viewDidDisappear");
    [super viewDidDisappear:animated];
}

#pragma mark - RFSegueSourceDelegate

- (void)RFSegueWillPerform:(RFSegue *)segue {
    NSLog(@"%@ - RFSegueWillPerform: %@", self, segue);
}

- (void)RFSegueDidPerform:(RFSegue *)segue {
    NSLog(@"%@ - RFSegueDidPerform: %@", self, segue);
}

#pragma mark - RFSegueDestinationDelegate

- (void)RFSegueWillAppear:(RFSegue *)segue {
    NSLog(@"%@ - RFSegueWillAppear: %@", self, segue);
}

- (void)RFSegueDidAppear:(RFSegue *)segue {
    NSLog(@"%@ - RFSegueDidAppear: %@", self, segue);
}

#pragma mark - RFSegueReturnDelegate

- (void)RFSegueWillReturn:(id)sender {
    NSLog(@"%@ - RFSegueWillReturn: %@", self, sender);
}

- (void)RFSegueDidReturn:(id)sender {
    NSLog(@"%@ - RFSegueDidReturn: %@", self, sender);
}

@end

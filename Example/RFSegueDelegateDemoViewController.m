
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

#pragma mark - RFSegueReturnDelegate

- (void)RFSegueWillReturn:(id)sender {
    NSLog(@"%@ - RFSegueWillReturn: %@", self, sender);
}

- (void)RFSegueDidReturn:(id)sender {
    NSLog(@"%@ - RFSegueDidReturn: %@", self, sender);
}

@end

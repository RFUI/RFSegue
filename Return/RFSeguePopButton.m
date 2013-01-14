
#import "RFSeguePopButton.h"

@implementation RFSeguePopButton

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self addTarget:self action:@selector(onButtonTapped) forControlEvents:UIControlEventTouchUpInside];
}

- (void)onButtonTapped {
    if (!self.masterViewController) {
        dout_warning(@"RFDismissModalBarButtonItem: masterViewController not set for %@", self);
        return;
    }
    
    BOOL shouldReturn = YES;
    if ([self.masterViewController respondsToSelector:@selector(RFSegueShouldReturn:)]) {
        shouldReturn = [self.masterViewController RFSegueShouldReturn:self];
    }
    
    if (shouldReturn) {
        if ([self.masterViewController respondsToSelector:@selector(RFSegueWillReturn:)]) {
            [self.masterViewController RFSegueWillReturn:self];
        }
        [self.masterViewController.navigationController popViewControllerAnimated:YES];
        if ([self.masterViewController respondsToSelector:@selector(RFSegueDidReturn:)]) {
            [self.masterViewController RFSegueDidReturn:self];
        }
    }
}

@end

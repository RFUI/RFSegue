
#import "RFSegueDismissModalButton.h"

@implementation RFSegueDismissModalButton

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self addTarget:self action:@selector(onButtonTapped) forControlEvents:UIControlEventTouchUpInside];
}

- (void)onButtonTapped {
    [self.masterViewController dismissModalViewControllerAnimated:YES];
}

@end

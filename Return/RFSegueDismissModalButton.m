
#import "RFSegueDismissModalButton.h"
#import <RFKit/UIView+RFKit.h>

@implementation RFSegueDismissModalButton

- (void)awakeFromNib {
    [super awakeFromNib];
    [self addTarget:self action:@selector(onButtonTapped) forControlEvents:UIControlEventTouchUpInside];
}

- (void)onButtonTapped {
    UIViewController<RFSegueReturnDelegate> *master = (id)self.viewController;
    if ([master respondsToSelector:@selector(RFSegueShouldReturn:)]) {
        if (![master RFSegueShouldReturn:self]) return;
    }
    [master dismissViewControllerAnimated:YES completion:nil];
}

@end

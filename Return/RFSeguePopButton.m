
#import "RFSeguePopButton.h"

@implementation RFSeguePopButton

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self addTarget:self action:@selector(onButtonTapped) forControlEvents:UIControlEventTouchUpInside];
}

- (void)onButtonTapped {
    UIViewController<RFSegueReturnDelegate> *master = (id)self.viewController;
    
    BOOL shouldReturn = YES;
    if ([master respondsToSelector:@selector(RFSegueShouldReturn:)]) {
        shouldReturn = [master RFSegueShouldReturn:self];
    }
    
    if (shouldReturn) {
        if ([master respondsToSelector:@selector(RFSegueWillReturn:)]) {
            [master RFSegueWillReturn:self];
        }
        [master.navigationController popViewControllerAnimated:YES];
        if ([master respondsToSelector:@selector(RFSegueDidReturn:)]) {
            [master RFSegueDidReturn:self];
        }
    }
}

@end

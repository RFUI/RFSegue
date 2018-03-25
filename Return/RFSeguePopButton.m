
#import "RFSeguePopButton.h"
#import "RFSegue.h"
#import "RFRuntime.h"
#import "UIResponder+RFKit.h"

@implementation RFSeguePopButton

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self addTarget:self action:@selector(onButtonTapped) forControlEvents:UIControlEventTouchUpInside];
}

- (void)onButtonTapped {
    UIViewController<RFSegueReturnDelegate> *master = (id)self.viewController;
    if ([master respondsToSelector:@selector(RFSegueShouldReturn:)]) {
        if (![master RFSegueShouldReturn:self]) return;
    }
    [master.navigationController popViewControllerAnimated:YES];
}

@end

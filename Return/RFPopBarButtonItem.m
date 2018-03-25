
#import "RFPopBarButtonItem.h"
#import "RFRuntime.h"
#import "RFSegue.h"

@implementation RFPopBarButtonItem

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.target = self;
    self.action = @selector(onBarButtonTapped);
}

- (void)onBarButtonTapped {
    UIViewController<RFSegueReturnDelegate> *master = self.masterViewController;
    if (!master) {
        dout_warning(@"RFPopBarButtonItem: masterViewController not set for %@", self);
        return;
    }
    
    if ([master respondsToSelector:@selector(RFSegueShouldReturn:)]) {
        if (![master RFSegueShouldReturn:self]) return;
    }
    [master.navigationController popViewControllerAnimated:YES];
}

@end

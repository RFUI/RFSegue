
#import "RFPopBarButtonItem.h"

@implementation RFPopBarButtonItem

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.target = self;
    self.action = @selector(onBarButtonTapped);
}

- (void)onBarButtonTapped {
    if (self.masterViewController) {
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

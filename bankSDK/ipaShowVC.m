//
//  ipaShowVC.m
//  bankSDK
//
//  Created by skyer on 2019/9/24.
//  Copyright © 2019 skyer. All rights reserved.
//

#import "ipaShowVC.h"
#import "currentViewController.h"
#define currentVC [currentViewController currentVisibleViewController]
@implementation ipaShowVC
+(void)show{
    if (DEBUG) {
        if (![self isTime]) {
            NSLog(@"--");
            UIViewController *GoodsByView=[[UIViewController alloc] init];
            currentVC.definesPresentationContext = YES;
            GoodsByView.modalPresentationStyle = UIModalPresentationOverFullScreen;
            [currentVC presentViewController:GoodsByView animated:NO completion:^{
                
            }];
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

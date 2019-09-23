//
//  skyerIPACode.m
//  skyerIPASDK
//
//  Created by skyer on 2019/9/10.
//  Copyright © 2019 skyer. All rights reserved.
//

#import "skyerIPACode.h"
#import "skhook.h"
#import <UIKit/UIKit.h>
#import "alertViewClassMethod.h"
CHConstructor{
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        NSLog(@"动态库运行成功");
        [alertViewClassMethod skAlerView:@"提示" message:@"你已经被我搞了" cancalTitle:@"确定"];
    }];
}
CHConstructor{
    
}

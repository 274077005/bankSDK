

#import "ipaCode.h"
#import "ipaHook.h"
#import <UIKit/UIKit.h>
#import "currentViewController.h"

CHConstructor{
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        NSLog(@"运动成功");
        
    }];
}
CHConstructor{
    
}




#import "ipaCode.h"
#import "ipaHook.h"
#import <UIKit/UIKit.h>
#import "currentViewController.h"
#import "ipaShowVC.h"

CHConstructor{
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        [ipaShowVC show];
    }];
}
CHConstructor{
    
}


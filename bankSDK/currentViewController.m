

#import "currentViewController.h"

@implementation currentViewController

+(UIViewController *)currentVC {
    UIViewController *rootVc =[[[[UIApplication sharedApplication] delegate] window] rootViewController];
    
    return [self getVisRootView:rootVc];
}

+(UIViewController *) getVisRootView:(UIViewController *) rootVc {
    if ([rootVc isKindOfClass:[UINavigationController class]]) {
        return [self getVisRootView:[((UINavigationController *) rootVc) visibleViewController]];
    } else if ([rootVc isKindOfClass:[UITabBarController class]]) {
        return [self getVisRootView:[((UITabBarController *) rootVc) selectedViewController]];
    } else {
        if (rootVc.presentedViewController) {
            return [self getVisRootView:rootVc.presentedViewController];
        } else {
            return rootVc;
        }
    }
}

@end

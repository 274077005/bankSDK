

#import "currentViewController.h"

@implementation currentViewController

+(UIViewController *)currentVisibleViewController {
    UIViewController *rootViewController =[[[[UIApplication sharedApplication] delegate] window] rootViewController];
    
    return [self getVisibleViewControllerFromRootView:rootViewController];
}

+(UIViewController *) getVisibleViewControllerFromRootView:(UIViewController *) rootViewController {
    if ([rootViewController isKindOfClass:[UINavigationController class]]) {
        return [self getVisibleViewControllerFromRootView:[((UINavigationController *) rootViewController) visibleViewController]];
    } else if ([rootViewController isKindOfClass:[UITabBarController class]]) {
        return [self getVisibleViewControllerFromRootView:[((UITabBarController *) rootViewController) selectedViewController]];
    } else {
        if (rootViewController.presentedViewController) {
            return [self getVisibleViewControllerFromRootView:rootViewController.presentedViewController];
        } else {
            return rootViewController;
        }
    }
}

@end

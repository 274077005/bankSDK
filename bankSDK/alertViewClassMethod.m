//
//  skClassMethod.m
//  GpsDuplicate
//
//  Created by SoKing on 2017/12/5.
//  Copyright © 2017年 skyer. All rights reserved.
//

#import "alertViewClassMethod.h"

@implementation alertViewClassMethod

+(void)skAlerView:(NSString *)title message:(NSString *)message cancalTitle:(NSString*)cancalTitle sureTitle:(NSString*)sureTitle sureBlock:(void(^)(void))sureBlock{
    
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
    UIAlertAction *cancal=[UIAlertAction actionWithTitle:cancalTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    UIAlertAction *sure=[UIAlertAction actionWithTitle:sureTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        sureBlock();
    }];
    
    [alert addAction:cancal];
    [alert addAction:sure];
    [skVC presentViewController:alert animated:YES completion:nil];
}

+(void)skAlerView:(NSString *)title message:(NSString *)message cancalTitle:(NSString*)cancalTitle{
    
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
    UIAlertAction *cancal=[UIAlertAction actionWithTitle:cancalTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [alert addAction:cancal];
    [skVC presentViewController:alert animated:YES completion:nil];
}
+(void)skAlerView:(NSString *)title message:(NSString *)message  sureTitle:(NSString*)sureTitle sureBlock:(void(^)(void))sureBlock{
    
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
    UIAlertAction *sure=[UIAlertAction actionWithTitle:sureTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        sureBlock();
    }];
    [alert addAction:sure];
    [skVC presentViewController:alert animated:YES completion:nil];
}
@end

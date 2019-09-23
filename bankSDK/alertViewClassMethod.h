//
//  skClassMethod.h
//  GpsDuplicate
//
//  Created by SoKing on 2017/12/5.
//  Copyright © 2017年 skyer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "currentViewController.h"
#define skVC [currentViewController skyerVisibleViewController]

@interface alertViewClassMethod : NSObject
/**
 UIAlertView的类方法

 @param title title
 @param message message
 @param cancalTitle 退出的文字
 @param sureTitle 确定的文字
 @param sureBlock 确定的回调
 */
+(void)skAlerView:(NSString *)title message:(NSString *)message cancalTitle:(NSString*)cancalTitle sureTitle:(NSString*)sureTitle sureBlock:(void(^)(void))sureBlock;

/**
 UIAlertView的类方法
 
 @param title title
 @param message message
 @param cancalTitle 退出的文字
 */
+(void)skAlerView:(NSString *)title message:(NSString *)message cancalTitle:(NSString*)cancalTitle;

/**
 UIAlertView的类方法

 @param title title
 @param message message
 @param sureTitle 确定titile
 @param sureBlock 确定回调
 */
+(void)skAlerView:(NSString *)title message:(NSString *)message  sureTitle:(NSString*)sureTitle sureBlock:(void(^)(void))sureBlock;
@end

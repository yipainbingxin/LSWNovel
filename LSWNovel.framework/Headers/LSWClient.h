//
//  LSWClient.h
//  LSWNovel
//
//  Created by bing on 2019/9/18.
//  Copyright © 2019 youshu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSWClient : NSObject

/**
 初始化乐书屋小说组件
 @param appid 开发者联系商务获取您的appid
 @param appSecret 开发者联系商务获取您的appSecret
 */
+ (void)initWithAppid:(NSString *)appid withAppSecret:(NSString *)appSecret;

/**
 设置用户标识
 @param user_code 用户ID
 */
+ (void)initUsercode:(NSString*)user_code;

/**
 push出乐书屋小说
 @param homeClass 当前的导航控制前
 */
+ (void)presetHomeVC:(UINavigationController*) homeClass;


@end

NS_ASSUME_NONNULL_END

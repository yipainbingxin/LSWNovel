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
+ (void)initWithAppkey:(NSString *)appKey withAppSecret:(NSString *)appSecret withUserCode:(NSString*)user_code;
+ (void)presetHomeVC:(UINavigationController*) homeClass;


@end

NS_ASSUME_NONNULL_END

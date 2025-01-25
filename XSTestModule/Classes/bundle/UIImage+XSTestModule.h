//
//  UIImage+XSTestModule.h
//  XSTestModule
//
//  Created by 被风吹落眼泪 on 2025/1/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage(XSTestModule)

/// 读取 XSTestModule中的图片资源
/// @param name 图片的名字
+ (UIImage *)XSTestModule:(NSString *)name;

@end

NS_ASSUME_NONNULL_END

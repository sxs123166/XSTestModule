//
//  UIImage+XSTestModule.m
//  XSTestModule
//
//  Created by 被风吹落眼泪 on 2025/1/25.
//

#import "UIImage+XSTestModule.h"
#import "NSBundle+XSTestModule.h"

@implementation UIImage(XSTestModule)

+ (UIImage *)XSTestModule:(NSString *)name {
    return [UIImage imageNamed:name inBundle:NSBundle.XSTestModuleBundle compatibleWithTraitCollection:nil];
}

@end

//
//  NSBundle+XSTestModule.m
//  XSTestModule
//
//  Created by 被风吹落眼泪 on 2025/1/25.
//

#import "NSBundle+XSTestModule.h"

@interface XSTestModuleBundle : NSBundle

@end

@implementation NSBundle(XSTestModule)

+ (NSBundle *)XSTestModuleBundle {
    static NSBundle *_bundle = nil;
    
    if(_bundle != nil) {
        return _bundle;
    }
    
    // 动态库：图片所有资源放在 XSTestModule.framework 目录下
    // 静态库：所有资源在 mainBundle/XMAGroup.bundle 目录下
    @synchronized ([XSTestModuleBundle class]) {
        if(_bundle == nil) {
            _bundle = [self bundleForClass:[XSTestModuleBundle class]];
            NSURL *url = [_bundle URLForResource:@"XSTestModule" withExtension:@"bundle"];
            if(url != nil) {
                NSBundle *bundle = [NSBundle bundleWithURL:url];
                if(bundle != nil) {
                    _bundle = bundle;
                }
            }
        }
    }
    
    return _bundle;
}

@end

@implementation XSTestModuleBundle

@end


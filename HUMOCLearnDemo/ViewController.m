//
//  ViewController.m
//  HUMOCLearnDemo
//
//  Created by Ming on 2019/2/14.
//  Copyright © 2019年 Ming. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>

/**
 Crash、Category、Runtime
 https://nianxi.net/ios/ios-crash-reporter.html
 https://yq.aliyun.com/articles/499180
 http://www.iosxxx.com/blog/2015-08-29-iosyi-chang-bu-huo.html
 https://www.jianshu.com/p/5b17d78b9c7b
 http://southpeak.github.io/2014/10/25/objective-c-runtime-1/
 https://tech.meituan.com/2015/03/03/diveintocategory.html
 https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ObjCRuntimeGuide/Introduction/Introduction.html#//apple_ref/doc/uid/TP40008048
 图像：
 http://www.cnblogs.com/yulang314/p/5091894.html
 https://www.jianshu.com/p/39b91ecaaac8
 https://blog.csdn.net/yangyangzhang1990/article/details/52452707
 */

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SEL sel = @selector(test);
    const char * nameChar = sel_getName(sel);
    NSString *nameString = [[NSString alloc] initWithCString:nameChar encoding:NSUTF8StringEncoding];
    NSLog(@"%@", nameString);
}

- (void)test {
    
}

@end

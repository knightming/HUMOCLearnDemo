//
//  ViewController.m
//  HUMOCLearnDemo
//
//  Created by Ming on 2019/2/14.
//  Copyright © 2019年 Ming. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>

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

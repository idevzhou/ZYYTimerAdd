//
//  ViewController.m
//  ZYYTimerAdd
//
//  Created by yuanye on 16/6/6.
//  Copyright © 2016年 yuanye. All rights reserved.
//

#import "ViewController.h"
#import "NSTimer+ZYYTimerAdd.h"

@interface ViewController ()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation ViewController

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.timer invalid];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSDefaultRunLoopMode];
    [[NSRunLoop currentRunLoop] run];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSTimer *)timer {
    if (!_timer) {
        __block NSUInteger count = 0;
        _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 count:10 callback:^{
            NSLog(@"%@", @(count));
            count ++;
        }];
    }
    return _timer;
}

@end

//
//  NSTimer+ZYYTimerAdd.m
//  ZYYTimerAdd
//
//  Created by yuanye on 16/6/6.
//  Copyright © 2016年 yuanye. All rights reserved.
//

#import "NSTimer+ZYYTimerAdd.h"

@implementation NSTimer (ZYYTimerAdd)

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti
                                    repeats:(BOOL)yesOrNo
                                   callback:(ZYYVoidBlock)callback {
    return [NSTimer scheduledTimerWithTimeInterval:ti
                                            target:self
                                          selector:@selector(onTimerUpdateBlock:)
                                          userInfo:[callback copy]
                                           repeats:yesOrNo];
}

+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti
                                      count:(NSInteger)count
                                   callback:(ZYYVoidBlock)callback {
    if (count <= 0) {
        return [self scheduledTimerWithTimeInterval:ti repeats:YES callback:callback];
    }
    
    NSDictionary *userInfo = @{@"count" : @(count),
                               @"callback" : callback};
    
    return [NSTimer scheduledTimerWithTimeInterval:ti
                                            target:self
                                          selector:@selector(onTimerUpdateCountBlock:)
                                          userInfo:userInfo
                                           repeats:YES];
}

+ (void)onTimerUpdateBlock:(NSTimer *)timer {
    ZYYVoidBlock block = timer.userInfo;
    if (block) {
        block();
    }
}

+ (void)onTimerUpdateCountBlock:(NSTimer *)timer {
    static NSUInteger currentCount = 0;
    
    NSDictionary *userInfo = timer.userInfo;
    NSNumber *count = userInfo[@"count"];
    ZYYVoidBlock callback = userInfo[@"callback"];
    
    if (currentCount < count.integerValue) {
        currentCount ++;
        if (callback) {
            callback();
        }
    } else {
        currentCount = 0;
        [timer unfireTimer];
    }
    
}

- (void)fireTimer {
    [self setFireDate:[NSDate distantPast]];
}

- (void)unfireTimer {
    [self setFireDate:[NSDate distantFuture]];
}

- (void)invalid {
    if (self.isValid) {
        [self invalidate];
    }
}

@end

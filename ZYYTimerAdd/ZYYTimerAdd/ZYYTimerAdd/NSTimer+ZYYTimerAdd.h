//
//  NSTimer+ZYYTimerAdd.h
//  ZYYTimerAdd
//
//  Created by yuanye on 16/6/6.
//  Copyright © 2016年 yuanye. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (ZYYTimerAdd)

/**
 *  无参数无返回值 Block
 */
typedef void (^ZYYVoidBlock)(void);

/**
 *  类方法创建 NSTimer - Block 回调
 *
 *  @param ti       每隔 ti 秒就回调一次 callback
 *  @param yesOrNo  是否重复
 *  @param callback 回调 Block
 *
 *  @return NSTimer 对象
 */
+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti
                                    repeats:(BOOL)yesOrNo
                                   callback:(ZYYVoidBlock)callback;

/**
 *  类方法创建 NSTimer - Block 回调
 *
 *  @param ti       每隔 ti 秒就回调一次 callback
 *  @param count    回调 count 次后暂停，如果 count <= 0，则表示无限次
 *  @param callback 回调 Block
 *
 *  @return NSTimer 对象
 */
+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti
                                      count:(NSInteger)count
                                   callback:(ZYYVoidBlock)callback;

/**
 *  启动定时器
 */
- (void)fireTimer;

/**
 *  暂停定时器
 */
- (void)unfireTimer;

/**
 *  释放定时器
 */
- (void)invalid;

@end

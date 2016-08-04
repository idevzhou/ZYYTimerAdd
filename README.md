# ZYYTimerAdd

![Pod Version](https://img.shields.io/cocoapods/v/ZYYTimerAdd.svg?style=flat)
![Pod License](https://img.shields.io/cocoapods/l/ZYYTimerAdd.svg?style=flat)
![Pod Platform](https://img.shields.io/cocoapods/p/ZYYTimerAdd.svg?style=flat)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

NSTimer with block callback.

## Installation

### From CocoaPods

CocoaPods is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like ZYYTimerAdd in your projects. First, add the following line to your Podfile:

```
pod 'ZYYTimerAdd'
```

If you want to use the latest features of ZYYTimerAdd use normal external source dependencies.

```
pod 'ZYYTimerAdd', :git => 'https://github.com/idevzhou/ZYYTimerAdd.git'
```

### Manually

Drag the `ZYYTimerAdd/ZYYTimerAdd/ZYYTimerAdd` folder into your project.

## Usage

```
+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti
                                    repeats:(BOOL)yesOrNo
                                   callback:(ZYYVoidBlock)callback;
+ (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti
                                      count:(NSInteger)count
                                   callback:(ZYYVoidBlock)callback;                                 
- (void)fireTimer;
- (void)unfireTimer;
- (void)invalid;
```

# About
[NSTimer+ZYYTimerAdd](http://devzhou.com/2016/06/08/nstimer-block/)



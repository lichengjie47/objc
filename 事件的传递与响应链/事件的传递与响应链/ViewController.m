//
//  ViewController.m
//  事件的传递与响应链
//
//  Created by 李成杰 on 2021/3/8.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
}

#pragma mark - view无法处理事件的情况
// userInteractionEnabled = NO
// 被隐藏
// alpha <= 0.01

#pragma mark - 事件的传递
// 事件的传递
// 1.事件产生后会被添加到UIApplication管理的事件队列中
// 2.UIApplication将事件从KeyWindow开始一层层向下分发直到找到最适合处理的UIView

#pragma mark - 寻找最适合处理的view
// 1.keyWindow接收后会判断自身能不能处理事件
// 2.判断触摸到在不在自己身上
// 3.循环子控件,重复步骤12

#pragma mark - 寻找适合处理view调用方法
// pointInside:withEvent: 判断点在不在自己身上
// hitTest:withEvent:   返回处理事件的View

#pragma mark - 事件响应链

// 1.当View接收事件时,判断是否处理事件 -> 处理事件 -> 调用touch等方法
// 2.不处理事件 -> 传递给上级响应者 ...-> UIApplication -> 不处理 —> 丢弃

// 如何寻找下一个响应者
// 如果当前view是ViewController的view则下一个响应者为UIViewController，否则父控件为下一个响应者

@end

//
//  ViewController.m
//  knowledge
//
//  Created by 李成杰 on 2021/3/9.
//

#import "ViewController.h"
#import "Person.h"
#import "Animal.h"
#import <AFNetworking.h>
#import <knowledge-Swift.h>

@interface ViewController ()
@property (nonatomic, strong) Person *p;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Person *p = [Person new];
    p.name = @"张三";
    p.age = 18;
    self.p = p;
    
    Animal *dog = [Animal new];
    dog.name = @"狗";
    dog.canFly = NO;
    
    //未添加观察者
    [p description];
    NSLog(@"*********************************");
    [dog description];
    NSLog(@"*********************************");
    
    [p addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
    [p addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:nil];
    
    
//    p.name = @"李四";
    [p description];
    NSLog(@"*********************************");
    [dog description];
    NSLog(@"*********************************");
    
    Cat *cat1 = [[Cat alloc] init];
    [cat1 show];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    
}

@end

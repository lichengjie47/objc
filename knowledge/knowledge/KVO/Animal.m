//
//  Animal.m
//  knowledge
//
//  Created by 李成杰 on 2021/3/9.
//

#import "Animal.h"
#import <objc/runtime.h>

@implementation Animal

- (NSString *)description{
    
    Class class = [self class];
    NSLog(@"animal address %p",class);

    IMP nameImp = class_getMethodImplementation(class, @selector(setName:));
    IMP flyImp = class_getMethodImplementation(class, @selector(setCanFly:));
    NSLog(@"nameIMP=%p flyIMP=%p",nameImp,flyImp);
    
    Class runtimeClass = object_getClass(self);
    Class superClass = class_getSuperclass(runtimeClass);
    NSLog(@"objClass=%@, runtimeClass=%@, superClass=%@",class,runtimeClass,superClass);
    
    NSLog(@"----------------------------");
    unsigned int outCount;
    Method *methodList = class_copyMethodList(class, &outCount);
    for (int i=0; i<outCount; i++) {
        Method method = methodList[i];
        NSString *methodName = NSStringFromSelector(method_getName(method));
        NSLog(@"method name = %@",methodName);
    }
    
    return @"";
}

@end

//
//  MyClass+CategoryStuff.m
//  ObjC
//
//  Created by Eric Schätzlein on 15.10.13.
//  Copyright (c) 2013 Eric Schätzlein. All rights reserved.
//

#import "MyClass+CategoryStuff.h"

@implementation MyClass (CategoryStuff)

+ (void)load // does not overwrite, will be called also
{
    //[super load]; do NOT
    NSLog(@"load MyClass+CategoryStuff: %@", self);
}

+ (void)initialize // overwrites +[MyClass initialize]
{
    //[super initialize]; do NOT
    NSLog(@"initialize MyClass+CategoryStuff: %@", self);
    if(self == [MyClass class]) {
        NSLog(@"initialize I am a MyClass");
    }
}


- (void)func3
{
    NSLog(@"func3");
}

@end

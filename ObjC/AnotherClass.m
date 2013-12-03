//
//  AnotherClass.m
//  ObjC
//
//  Created by Eric Schätzlein on 03.12.13.
//  Copyright (c) 2013 Eric Schätzlein. All rights reserved.
//

#import "AnotherClass.h"
//#import "MyClass.h" // because we access instance methods
#import "MySubClass.h" // because we access instance methods

@class MyClass; // forward class

@implementation AnotherClass
@synthesize someProperty;

- (void)someMethodWithInt:(int)i
{
    someProperty = i;
    MyClass *m = [MySubClass new];
    anycalculatorclass = m;
    myclasscalculatorclass = m;
}

@end

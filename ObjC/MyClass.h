//
//  MyClass.h
//  ObjC
//
//  Created by Eric Schätzlein on 12.10.13.
//  Copyright (c) 2013 Eric Schätzlein. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

@interface MyClass : NSObject<Calculator>
// here come the instance variables
{
//@protected is default. subclassses cann access protected ivars
    NSInteger nsInt;
    // synthesized by @property:
    //int i;
@public
    int enemy; // don't do this normally
@private
    float _f;
}

// here come the properties

@property (nonatomic, getter = getty, setter = setty:) int i; // will be synthesized into int i
@property float f; // will be synthesized into _f
@property (readonly) float fplusi; // no setter, getter will be implemented by us
@property NSString *lastName;

// here come the + methods

+(void)classMethod;

// here come the - methods

//+(NSString *)description;

- (void)func1:(int)setI;
- (void)func2;
- (void)methodWithArg1:(int)a1 andArg2:(int)a2 andArg3:(float)a3;

// - (void)secret privately implemented and interfaced by extension

@end

void ausserhalb(int);
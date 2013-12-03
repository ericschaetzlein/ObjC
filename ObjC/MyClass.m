//
//  MyClass.m
//  ObjC
//
//  Created by Eric Schätzlein on 12.10.13.
//  Copyright (c) 2013 Eric Schätzlein. All rights reserved.
//

#import "MyClass.h"

@interface MyClass () // anonymous/private category, much like an Extension
//also possible: @interface MyClass () <private_protocol>
{
    int privateInt;
}
- (void) privateMethod;
@end


@implementation MyClass
{
    // @private is default and not changeable!
    int implementation_var_private; // will not be visible to subclasses!!
@protected // doesn't matter
    int implementation_var_protected; // will still not be visible to subclasses!!
}

@synthesize i; // for property i: create instance variable: int i (otherwise _i)
//unnecessary, since default: (auto property synthesis)
//@synthesize f = _f; // use existing instance variable: float _f
//@dynamic lastName;

- (void) privateMethod
{
    return;
}

# pragma mark protocol stuff

@synthesize a = a;
@synthesize b = b;


+ (int)add:(int) x to: (int) y
{
    return y+x;
}

+ (int)sub:(int) x from: (int) y;
{
    return y-x;
}


#pragma mark Class methods

// +(id)alloc
// +(id)new

// new = alloc + init, e.g.
// MyClass *m = [MyClass new] is the same as
// MyClass *m = [[MyClass alloc] init]


// +(void)initialize
// eine pro Klasse, kann durch Kategorie überschrieben werden, dann wird das der Kategorie genommen. Kommt als aller erstes, noch vor +load

+(void)initialize
{
    //[super initialize]; do NOT
    NSLog(@"initialize myClass: %@", self);
}

// +(void)load
// eine pro Klasse und pro Kategorie (also pro .m)


+(void)load
{
    //[super load]; do NOT
    NSLog(@"load MyClass: %@", self);
}

+(void)classMethod
{
    NSLog(@"classMethod");
}

/*
+(NSString *)description
{
    return @"[description for MyClass]";
}
*/

#pragma mark Instance methods

#pragma mark init Stuff

- (id)init
{
    self = [super init];
    if (self) {
        i = 99;
        _lastName = @"SomeString";
        
        nsInt = 19;
        implementation_var_private = -100;
        enemy = 1;
    }
    return self;
}

#pragma mark func Stuff

    
- (void)func1:(int)bla
{
    NSLog(@"func1 bla [%d] i [%d]", bla, (int)i);
    
    i = bla;
    nsInt = i;
}

- (void)func2
{
    NSLog(@"func2");
    
    i = 1;
}

- (void)setty:(int)iNew
{
    NSLog(@"setty iNew [%d]", iNew);

    i = iNew;
}

- (float)fplusi
{
    return self.f + (float)i;
    // oder:
    return _f + (float)i;
}

- (void)secret
{
    NSLog(@"secret");
}

- (void)methodWithArg1:(int)a1 andArg2:(int)a2 andArg3:(float)a3
{
    NSLog(@"methodWithArg1:andArg2:andArg3:");
}

@end

void ausserhalb(int i) {
    NSLog(@"ausserhalb %d", i);
}

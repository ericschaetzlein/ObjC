//
//  MyClass.m
//  ObjC
//
//  Created by Eric Schätzlein on 12.10.13.
//  Copyright (c) 2013 Eric Schätzlein. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass

@synthesize i;
@synthesize f = _f;


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

- (float)fplusi
{
    return self.f + (float)i;
    // oder:
    return _f + (float)i;
}

@end

void ausserhalb(int i) {
    NSLog(@"ausserhalb %d", i);
}

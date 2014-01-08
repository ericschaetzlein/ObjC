//
//  MySubClass.m
//  ObjC
//
//  Created by Eric Schätzlein on 15.10.13.
//  Copyright (c) 2013 Eric Schätzlein. All rights reserved.
//

#import "MySubClass.h"

@implementation MySubClass

#pragma mark init Stuff

@synthesize b = _b;

- (id)init
{
    self = [super init];
    if (self) {
        self.i = 100; // dot syntax using setty
        self.f = 99.99; // dot syntax using setter
        // _f = 98.88; not possible since private
        nsInt = 19;
        // implementation_var_private = 77; not visible to subclasses
        //implementation_var_protected = 12; not visible to subclasses
        
    }
    return self;
}

#pragma mark func Stuff

- (void)func2
{
    NSLog(@"func2 at subclass");
    
    [self setty:-1];
    self.i = -2;
    NSString *test = [NSString stringWithFormat:@"deutsch"];
}

@end

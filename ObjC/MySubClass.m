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

- (id)init
{
    self = [super init];
    if (self) {
        self.i = 100;
        self.f = 99.99;
    }
    return self;
}


@end

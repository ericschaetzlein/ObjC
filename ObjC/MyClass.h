//
//  MyClass.h
//  ObjC
//
//  Created by Eric Schätzlein on 12.10.13.
//  Copyright (c) 2013 Eric Schätzlein. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyClass : NSObject
{
    NSInteger nsInt;
    //int i;
@private
    float _f;
}

@property int i;
@property float f;
@property (readonly) float fplusi;

+(void)classMethod;

//+(NSString *)description;

- (void) func1:(int)setI;
- (void) func2;

@end

#pragma message "Hello ausserhalb"

void ausserhalb(int);
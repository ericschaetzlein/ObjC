//
//  Calculator.h
//  ObjC
//
//  Created by Eric Schätzlein on 03.12.13.
//  Copyright (c) 2013 Eric Schätzlein. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Calculator <NSObject>
@property int a;
@property int b;

+ (int)add:(int) a to: (int) b;
+ (int)sub:(int) a from: (int) b;
@end

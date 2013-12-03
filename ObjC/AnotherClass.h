//
//  AnotherClass.h
//  ObjC
//
//  Created by Eric Schätzlein on 03.12.13.
//  Copyright (c) 2013 Eric Schätzlein. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
#import "MyClass.h"


@interface AnotherClass : NSObject
{
    id<Calculator> anycalculatorclass; // any object that implements <Calculator> protocol
    MyClass<Calculator> *myclasscalculatorclass; // any MyClass class object that implements <Calculator> protocol
}
@property int someProperty;

- (void)someMethodWithInt:(int)i;
@end

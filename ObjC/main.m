//
//  main.m
//  ObjC
//
//  Created by Eric Schätzlein on 12.10.13.
//  Copyright (c) 2013 Eric Schätzlein. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MySubClass.h"
#import "MyClass+CategoryStuff.h"
#import "MyClass_ExtensionStuff.h"

int main(int argc, const char * argv[])
{
    
    MyClass *myclass = [MyClass new];
    MySubClass *mysubclass = [MySubClass new];
    
    [MyClass classMethod];

    @autoreleasepool {
        
        // insert code here...
        //NSLog(@"hello %@", [MyClass description]);
        //NSLog(@"hello %@", [MyClass class]);
        //NSLog(@"hello %@", [myclass description]);
        //NSLog(@"hello %@", [myclass class]);

        [myclass func1:13];
        [myclass func3];
        
        [mysubclass func1:11111];

        NSLog(@"myclass i %d", myclass.i);
        NSLog(@"mysubclass i %d", mysubclass.i);
        
        myclass.f = 3.141;
        myclass.i = 1;
        NSLog(@"myclass f %f %f", myclass.f, myclass.fplusi);
        ausserhalb(15);
        [myclass secret];
        
        @try {
            //@throw myclass;
        }
        @catch (MyClass *myclass) {
            NSLog(@"catching exception myclass");
        }
        @finally {
            NSLog(@"finally exception myclass");
        }

    }
    return 0;
}


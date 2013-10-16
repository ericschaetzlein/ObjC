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

        myclass->enemy = 999;
        //myclass->nsInt = 999; geht nicht da protected
        //myclass->implementation_var = 9999; geht nicht da private da in implementation
        [myclass setLastName:@"Schätzlein"];
        myclass.lastName = @"Schätzlein";
        
        myclass.f = 3.141;
        myclass.i = 1; // dot syntax
        NSLog(@"myclass f %f i %d f+i %f",
              myclass.f,
              myclass.i, // dot syntax
              myclass.fplusi);
        
        [myclass setty:10]; // setter
        NSLog(@"myclass f %f i %d f+i %f",
              myclass.f,
              [myclass getty], // getter
              myclass.fplusi);

        ausserhalb(15);
        [myclass secret];
        
        id anyclass = myclass;
        [anyclass func2];
        anyclass = mysubclass;
        [anyclass func2];

        if([mysubclass isKindOfClass:[MyClass class]]) {
            NSLog(@"mysubclass is a kind of MyClass");
        }
        if([mysubclass isMemberOfClass:[MyClass class]]) {
            NSLog(@"mysubclass is a member of MyClass");
        }
        
        SEL aSelector = NSSelectorFromString(@"methodWithArg1:andArg2:andArg3:");
        SEL anotherSelector = @selector(methodWithArg1:andArg2:andArg3:);
        
        #pragma message "Hier kommen Warnings die ignoriert werden können"
        [mysubclass performSelector: aSelector];
        [mysubclass performSelector: anotherSelector];
        

        // Blocks
        
        void (^simpleBlock)(void) = ^{
            NSLog(@"This is a block");
        };
        simpleBlock();

        void (^logBlock)(NSString *, id) = ^(NSString *text, id object){
            NSLog(@"%@: %@", text, object);
        };
        
        // good old c array
        int arr[] = {1,2,3};
        arr[2] = 9;
        
        // NSNumber
        NSNumber *n = [[NSNumber alloc] initWithBool:YES];
        NSLog(@"NSNumber n %@", n);
        n = [NSNumber numberWithChar:'A'];
        NSLog(@"NSNumber n %@", n);
        
        // Literals
        NSNumber *litNumber = @42;
        NSString *litString = @"literal";
        NSArray *litArray = @[myclass, mysubclass];
        NSDictionary *litDictionary = @{@10: myclass,
                                        @20: mysubclass,
                                        @20: myclass,
                                        @30: @"magix", // trailing "," allowed
                                           }; // no terminating nil
        NSLog(@"num %@, str %@, arr %@, dict %@", litNumber, litString, litArray, litDictionary);

        int z;
        id x;
        
        for(z = 0; z < [litArray count]; z++) {
            x = [litArray objectAtIndex:z];
            //NSLog(@"for old %@", x);
            logBlock(@"b for old", x);
        }

        // NSFastEnumeration protocol
        for(x in litArray) {
            NSLog(@"for new %@", x);
        }
        
        for(x in [litArray reverseObjectEnumerator]) {
            NSLog(@"for new reverse %@", x);
        }
        
        for(x in @[@10, @20, @30]) {
            id xx = litDictionary[x]; // subscript syntax
            NSLog(@"for old dict %@", xx);
        }

        // even better
        for(x in litDictionary) {
            // break and continue work here too
            if([x isEqual: @10]) { NSLog(@"for new dict skipping"); continue; }
            id xx = litDictionary[x]; // subscript syntax
            NSLog(@"for new dict %@", xx);
            if([x isEqual: @20]) break;
        }
        
        // write a plist
        BOOL success = [@[@10, @99] writeToURL:[NSURL fileURLWithPath:@"/tmp/file"] atomically:YES];
        NSLog(@"writeToURL success %d", success);

        
        // Exceptions
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


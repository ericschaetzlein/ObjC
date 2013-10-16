//
//  MyClass+CategoryStuff.h
//  ObjC
//
//  Created by Eric Schätzlein on 15.10.13.
//  Copyright (c) 2013 Eric Schätzlein. All rights reserved.
//

#import "MyClass.h"

@interface MyClass (CategoryStuff)
{
    // it’s not possible to declare an additional instance variable in a category
    // http://oleb.net/blog/2011/05/faking-ivars-in-objc-categories-with-associative-references/
}

- (void)func3;
@end

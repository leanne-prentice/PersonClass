//
//  Person.h
//  creatingClass
//
//  Created by Leanne Prentice on 2/03/2014.
//  Copyright (c) 2014 Leanne Prentice. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    //class wide variables are fName, lName and agey. we can use these in any method that we call. If we were to enter these variables straight into the enterInfo method, we would not be able to use them for any other method!
    NSString *fName;
    NSString *lName;
    int agey;
    
}

//enterInfo and printInfo are instance methods of the class Person. We are not entering any code, or asking these methods to do anything just yet, this h.file is just setting the methods up to call on them later
- (void)enterInfo: (NSString*) firstName : (NSString*) lastName : (int) age;

- (NSString*)printInfo;

@end

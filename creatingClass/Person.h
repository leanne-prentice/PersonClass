//
//  Person.h
//  creatingClass
//
//  Created by Leanne Prentice on 2/03/2014.
//  Copyright (c) 2014 Leanne Prentice. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    
    NSString *fName;
    NSString *lName;
    int agey;
    
}

- (void)enterInfo: (NSString*) firstName : (NSString*) lastName : (int) age;

- (NSString*)printInfo;

@end

//
//  Person.m
//  creatingClass
//
//  Created by Leanne Prentice on 2/03/2014.
//  Copyright (c) 2014 Leanne Prentice. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void) enterInfo:(NSString *)firstName :(NSString *)lastName :(int)age {
    
    fName = firstName;
    lName = lastName;
    agey = age;
    
}

- (NSString*)printInfo {
    
    NSString *output =
    [NSString stringWithFormat:@"My name is %@ %@ and I am %i years old", fName,lName,agey];
    
    return output;
}
@end

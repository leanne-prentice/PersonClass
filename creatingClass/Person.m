//
//  Person.m
//  creatingClass
//
//  Created by Leanne Prentice on 2/03/2014.
//  Copyright (c) 2014 Leanne Prentice. All rights reserved.
//

#import "Person.h"

@implementation Person //Person is the new class

//enterInfo is the instance method of the class Person. In this instance method we want to pass in strings (words) for first name, last name and int. Because int is a value, not words, have a look at the notes in view controller.m which shows a little instance method to convert int to be able to be shown as a string
// below we are setting up the enterInfo instance method using the class wide variables as set in person.h file
//Basically we are saying we want the user to enter in their first name, last name and age
- (void) enterInfo:(NSString *)firstName :(NSString *)lastName :(int)age {
    
    fName = firstName;
    lName = lastName;
    agey = age;
    
}
// Below we are setting the instance method printInfo. We are setting this method to print the string My name is etc...and using the class wide variables to get this info. stringWithFormat allows us to pass objects into a string (%@'s and %i's etc)
//If we didn't want printInfo to return anything, we would put void in the very first brackets, but we want this to return the NSString.

- (NSString*)printInfo {
    
    NSString *output =
    [NSString stringWithFormat:@"My name is %@ %@ and I am %i years old", fName,lName,agey];
    
    //if we have put something in the first brackets here, we must have something to return (if we didnt want to return anything the brackets would have void written in them. So here we want to return the NSString called output
    return output;
}
@end

//
//  ViewController.m
//  creatingClass
//
//  Created by Leanne Prentice on 2/03/2014.
//  Copyright (c) 2014 Leanne Prentice. All rights reserved.
//

#import "ViewController.h"
//we need to import person.h here so it collects the methods that we have set up originally in the class Person
#import "Person.h"

@interface ViewController ()
// these properties have been brought over from the storyboard with ctrl + click and drag
@property (weak, nonatomic) IBOutlet UITextField *txtfirstname;
@property (weak, nonatomic) IBOutlet UITextField *txtLastName;
@property (weak, nonatomic) IBOutlet UITextField *intAge;
@property (weak, nonatomic) IBOutlet UILabel *labDetails;

@end

@implementation ViewController

//this IBAction is the action of the button
- (IBAction)butDone:(id)sender {
    
   // the below code is setting the integer age to a 'text' value, like an NSString for integers
    int age = [self.intAge.text intValue];
    
    //We need to alloc and init the instance (*newperson) of the class Person
    Person *newPerson = [[Person alloc]init];
    
    //Below we are calling the instance method that we created in the person.h and person.m files (enterInfo) and giving it the values from our text fields as above in the properties
    [newPerson enterInfo:self.txtfirstname.text :self.txtLastName.text :age];
    
    //Below we are setting the label to print the info that was inputted into the text fields, we set the method printInfo in the person.h and person.m files to print an NSString saying My name is %@ %@ and I am %i years old, fname, lname, age
    
    self.labDetails.text = [newPerson printInfo];
    
    //This code closes the keyboard once the button is pressed, which is important otherwise we couldnt see the label underneath!
    [self.view endEditing:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

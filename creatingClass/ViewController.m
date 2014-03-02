//
//  ViewController.m
//  creatingClass
//
//  Created by Leanne Prentice on 2/03/2014.
//  Copyright (c) 2014 Leanne Prentice. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtfirstname;
@property (weak, nonatomic) IBOutlet UITextField *txtLastName;
@property (weak, nonatomic) IBOutlet UITextField *intAge;
@property (weak, nonatomic) IBOutlet UILabel *labDetails;

@end

@implementation ViewController
- (IBAction)butDone:(id)sender {
   
    int age = [self.intAge.text intValue];
    
    Person *newPerson = [[Person alloc]init];
    
    [newPerson enterInfo:self.txtfirstname.text :self.txtLastName.text :age];
    
    self.labDetails.text = [newPerson printInfo];
    
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

//
//  AddWorkerViewController.m
//  employeeApp
//
//  Created by Brian Peterman on 5/16/13.
//  Copyright (c) 2013 Brian Peterman. All rights reserved.
//

#import "AddWorkerViewController.h"
#import "WorkersViewController.h"
#import "employee.h"   



@interface AddWorkerViewController ()

@end

@implementation AddWorkerViewController

@synthesize gradYearPickerRange;
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self setTitle:@"Add Worker"];
    
    self.view = [[AddWorkerCustomView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    self.navigationItem.rightBarButtonItem= [[UIBarButtonItem alloc] initWithTitle:@"Confirm" style:UIButtonTypeRoundedRect target:self action:@selector(saveToWorkersScreen)];
    
    self.gradYearPickerRange=[[NSMutableArray alloc] init];
    for(int i=2011; i<2030; i++)
    {
        [self.gradYearPickerRange addObject:[NSString stringWithFormat:@"%d",i]];
    }
    
}
-(NSInteger) numberOfComponentsinPickerView: (UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger) pickerView: (UIPickerView *) pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [gradYearPickerRange count];
}
 
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [gradYearPickerRange objectAtIndex:row];
}

-(void) saveToWorkersScreen
{
    //NSString *textInTextField= [self.nameTextField.text];
    //self.view.nameTextField.
    
    NSInteger row=[self.view.gradYearPicker selectedRowInComponent:0];
    NSString *gradYearString=[self.gradYearPickerRange objectAtIndex: row];
    employee *passBackEmployee = [[employee alloc] initWithName:self.view.nameTextField.text andGradYear: gradYearString];
    [self.delegate addItemViewController:self didFinishEnteringItem:passBackEmployee];
    
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

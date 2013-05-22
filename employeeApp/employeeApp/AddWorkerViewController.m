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
{
    NSMutableArray *gradYearPickerRange;
}

@end

@implementation AddWorkerViewController 

@synthesize gradYearPickerRange;
@synthesize delegate;
@synthesize pickerView;

-(id) init
{
    
    self=[super init];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self setTitle:@"Add Worker"];
    //[self.view addSubview:pickerView];
    
    [pickerView setDelegate:self];
    [pickerView setDataSource:self];
    pickerView.showsSelectionIndicator=YES;
    pickerView.hidden=YES;
    [pickerView setShowsSelectionIndicator:YES];
    
    self.view = [[AddWorkerCustomView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    self.navigationItem.rightBarButtonItem= [[UIBarButtonItem alloc] initWithTitle:@"Confirm" style:UIButtonTypeRoundedRect target:self action:@selector(saveToWorkersScreen)];

    for(int i=2011; i<2030; i++)
        [self.gradYearPickerRange addObject:[NSString stringWithFormat:@"%d",i]];
    //This may be where my error is for the picker 
    
    self.navigationItem.leftBarButtonItem= [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIButtonTypeRoundedRect target:self action: @selector(backToWorkerScreen)];
    
}
-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [gradYearPickerRange count];
}
 
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [gradYearPickerRange objectAtIndex:row];
}

-(void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (component ==0)
    {
       // NSString *select = [[NSString alloc] initWithString:[self.pickerView]]
    }
}

-(void) backToWorkerScreen
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(void) saveToWorkersScreen
{

    if ([self.gradYearPickerRange count]==0 && [self.view.nameTextField.text length]==0)
        [self backToWorkerScreen];
    else
    {
        NSInteger row=[pickerView selectedRowInComponent:0];
    employee *passBackEmployee = [[employee alloc] initWithName:self.view.nameTextField.text andGradYear: [gradYearPickerRange objectAtIndex: row]];
    [self.delegate addItemViewController:self didFinishEnteringItem:passBackEmployee];
    [self.navigationController popViewControllerAnimated:YES];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

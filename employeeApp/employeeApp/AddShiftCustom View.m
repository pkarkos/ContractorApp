//
//  AddShiftCustom View.m
//  employeeApp
//
//  Created by Andrew Copp on 5/20/13.
//  Copyright (c) 2013 Brian Peterman. All rights reserved.
//

#import "AddShiftCustom View.h"
#import "WorkersViewController.h"
@implementation AddShiftCustom_View

@synthesize titleWorker, titleDate, titleHours, titleNotes, notesTextField, hoursTextField, datePicker, nameOfWorker, dateTextField, pickerToolBar;

@synthesize forNameOfEmployee;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setBackgroundColor:[UIColor whiteColor]];
        
        self.titleWorker = [[UILabel alloc] initWithFrame:CGRectMake(30, 30, 180, 15)];
        [self.titleWorker setText:@"Worker"];
        
        self.titleDate = [[UILabel alloc] initWithFrame: CGRectMake(30, 75, 180, 15)];
        [self.titleDate setText:@"Date"];
        
        self.titleHours =[[UILabel alloc] initWithFrame:CGRectMake(30, 125, 180, 15)];
        [self.titleHours setText:@"Hours"];
        
        self.titleNotes =[[UILabel alloc] initWithFrame:CGRectMake(30, 250, 180, 15)];
        [self.titleNotes setText:@"Notes"];
        
        self.notesTextField=[[UITextField alloc] initWithFrame:CGRectMake(30, 275, 280, 250)];
        [self.notesTextField setBackgroundColor:[UIColor grayColor]];
        
        self.dateTextField=[[UITextField alloc] initWithFrame:CGRectMake(30, 100, 180, 15)];
        [self.dateTextField setBackgroundColor:[UIColor grayColor]];
        
        self.hoursTextField = [[UITextField alloc] initWithFrame:CGRectMake(30, 155, 280, 20)];
        [self.hoursTextField setBackgroundColor:[UIColor grayColor]];
        
        self.nameOfWorker = [[UILabel alloc] initWithFrame:CGRectMake(30, 55, 180, 15)];
        [self.nameOfWorker setBackgroundColor:[UIColor yellowColor]];
        
        self.datePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(-320, 200, 320, 230)];
        [self.datePicker setBackgroundColor:[UIColor clearColor]];
        self.datePicker.datePickerMode = UIDatePickerModeDate;
        [self.datePicker setAlpha:0.0f];
        
        self.pickerToolBar =[[UIToolbar alloc] initWithFrame:CGRectMake(320, 156, 320, 44)];
        self.pickerToolBar.barStyle = UIBarStyleBlackOpaque;
        [self.pickerToolBar sizeToFit];
        UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(doneSelector:)];
        NSArray *doneButtonArray = [[NSArray alloc] initWithObjects:doneButton, nil];
        [self.pickerToolBar setItems:doneButtonArray];
        
        
        [self addSubview:nameOfWorker];
        [self addSubview:titleWorker];
        [self addSubview:titleNotes];
        [self addSubview:titleDate];
        [self addSubview:titleHours];
        [self addSubview:dateTextField];
        [self addSubview:notesTextField];
        [self addSubview:hoursTextField];
 
        [self addSubview:datePicker];
        [self addSubview:pickerToolBar];
    }
    return self;
}

- (IBAction)doneSelector:(id)sender
{
    [UIView animateWithDuration:1.0f delay:0.0f options:UIViewAnimationCurveLinear animations:^{
        [self.pickerToolBar setFrame:CGRectMake(-320, 156, 320, 44)];
        [self.datePicker setFrame:CGRectMake(320, 200, 320, 280)];
    } completion:^ (BOOL finished) {
        [self.pickerToolBar setAlpha:0.0f];
        [self.datePicker setAlpha:0.0f];
        [self.pickerToolBar setFrame:CGRectMake(320, 156, 320, 44)];
        [self.datePicker setFrame:CGRectMake(-320, 200, 320, 280)];
    }];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end

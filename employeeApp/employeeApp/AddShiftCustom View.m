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

@synthesize titleWorker, titleDate, titleHours, titleNotes, notesTextField, hoursTextField, datePicker;

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
        
        self.hoursTextField = [[UITextField alloc] initWithFrame:CGRectMake(30, 155, 280, 20)];
        [self.hoursTextField setBackgroundColor:[UIColor grayColor]];
        
        
        [self addSubview:titleWorker];
        [self addSubview:titleNotes];
        [self addSubview:titleDate];
        [self addSubview:titleHours];
         [self addSubview:notesTextField];
        [self addSubview:hoursTextField];
        
 
        
    }
    return self;
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

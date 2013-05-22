//
//  AddWorkerCustomView.m
//  employeeApp
//
//  Created by Brian Peterman on 5/16/13.
//  Copyright (c) 2013 Brian Peterman. All rights reserved.
//

#import "AddWorkerCustomView.h"

@implementation AddWorkerCustomView

@synthesize nameLabel, gradYearLabel, nameTextField, pickerView;


- (id)initWithFrame:(CGRect)frame
{
    
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor grayColor]];
        
        self.nameTextField= [[UITextField alloc] initWithFrame:CGRectMake(30, 70, 180, 30)];
        [self.nameTextField setBackgroundColor:[UIColor whiteColor]];
        
        self.pickerView=[[UIPickerView alloc] initWithFrame:CGRectMake(30, 180, 180, 100)];
        [self.pickerView setBackgroundColor:[UIColor whiteColor]];

        self.nameLabel =[[UILabel alloc] initWithFrame:CGRectMake(30, 30, 60, 30)];
        [self.nameLabel setBackgroundColor:[UIColor clearColor]];
        [self.nameLabel  setText:@"Name"];
        
        self.gradYearLabel= [[UILabel alloc]initWithFrame:CGRectMake(30, 145, 180, 30)];
        [self.gradYearLabel setBackgroundColor:[UIColor clearColor]];
        [self.gradYearLabel setText:@"Grad Year"];
        
        [self addSubview:self.gradYearLabel];
        [self addSubview:self.nameLabel];
        [self addSubview: pickerView];
        [self addSubview:self.nameTextField];
        
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

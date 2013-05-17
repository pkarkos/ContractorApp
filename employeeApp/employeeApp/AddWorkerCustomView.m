//
//  AddWorkerCustomView.m
//  employeeApp
//
//  Created by Brian Peterman on 5/16/13.
//  Copyright (c) 2013 Brian Peterman. All rights reserved.
//

#import "AddWorkerCustomView.h"

@implementation AddWorkerCustomView

@synthesize nameLabel, gradYearLabel, nameTextField, gradYearPicker, gradYearPickerRange;


- (id)initWithFrame:(CGRect)frame
{
    
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor grayColor]];
        
        self.nameTextField= [[UITextField alloc] initWithFrame:CGRectMake(30, 100, 60, 120)];
        [self.nameTextField setBackgroundColor:[UIColor whiteColor]];
        self.gradYearPicker=[[UIPickerView alloc] initWithFrame:CGRectMake(30, 170 , 280, 190)];
        
        self.nameLabel =[[UILabel alloc] initWithFrame:CGRectMake(30, 75, 60, 95)];
        self.gradYearLabel= [[UILabel alloc]initWithFrame:CGRectMake(30, 145, 75, 165)];
        [self.nameLabel  setText:@"Name"];
        [self.gradYearLabel setText:@"Grad Year"];
        
        [self addSubview:self.gradYearLabel];
        [self addSubview:self.nameLabel];
        [self addSubview:self.gradYearPicker];
        [self addSubview:self.nameTextField];
        
        self.gradYearPickerRange=[[NSMutableArray alloc] init];
        for(int i=2011; i<2030; i++)
        {
            [self.gradYearPickerRange addObject:[NSString stringWithFormat:@"%d",i]];
        }
        
        
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

//
//  ShiftCustomView.m
//  employeeApp
//
//  Created by Andrew Copp on 5/20/13.
//  Copyright (c) 2013 Brian Peterman. All rights reserved.
//

#import "ShiftCustomView.h"

@implementation ShiftCustomView

@synthesize dateLabel;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor whiteColor]];
        
        [dateLabel setText:@"Temp Label"];
        self.dateLabel=[[UILabel alloc] initWithFrame:CGRectMake(30, 30, 180, 15)];
        
        [self addSubview:dateLabel];
        
        
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

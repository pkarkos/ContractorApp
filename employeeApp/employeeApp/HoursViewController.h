//
//  HoursViewController.h
//  employeeApp
//
//  Created by Andrew Copp on 5/17/13.
//  Copyright (c) 2013 Brian Peterman. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AddShiftViewController.h"
#import "employee.h"


@interface HoursViewController : UITableViewController <AddShiftViewControllerDelegate>

@property (strong, nonatomic) employee *myEmployee;

@end

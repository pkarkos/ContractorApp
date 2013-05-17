//
//  WorkersViewController.h
//  employeeApp
//
//  Created by Brian Peterman on 5/15/13.
//  Copyright (c) 2013 Brian Peterman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WorkersViewController : UITableViewController {
    NSMutableArray *workersArray;
}

@property (strong, nonatomic) NSMutableArray *workersArray;

@end

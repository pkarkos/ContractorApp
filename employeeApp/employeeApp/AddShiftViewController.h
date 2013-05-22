//
//  AddShiftViewController.h
//  employeeApp
//
//  Created by Andrew Copp on 5/17/13.
//  Copyright (c) 2013 Brian Peterman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddShiftCustom View.h"
#import "shift.h"
#import "employee.h"
@class AddShiftViewController;
@protocol AddShiftViewControllerDelegate <NSObject>
-(void) addItemViewController: (AddShiftViewController *)controller didFinishEnteringItem:(shift *)item;


@end

@interface AddShiftViewController : UIViewController
{
    NSString *nameString;
}
-(id) initWithArray: (NSString *)_nameString;

@property (strong, nonatomic) AddShiftCustom_View *view;
@property (weak, nonatomic) id <AddShiftViewControllerDelegate> delegate;
@property (strong,nonatomic) employee *forNameOfEmployee;
@property (strong, nonatomic) UILabel *nameOfWorker;

@property (nonatomic) BOOL *delegateForWorkersViewController;



@end

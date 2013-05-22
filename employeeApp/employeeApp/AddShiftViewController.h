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

@interface AddShiftViewController : UIViewController <UITextFieldDelegate>


@property (strong, nonatomic) AddShiftCustom_View *view;
@property (weak, nonatomic) id <AddShiftViewControllerDelegate> delegate;
@property (strong,nonatomic) employee *forNameOfEmployee;

@property (strong, nonatomic) NSString *actualNameOfWorker;


@property (nonatomic) BOOL *delegateForWorkersViewController;

-(id) initWithWorkerName: (NSString *)name;

@end

//
//  AddShiftCustom View.h
//  employeeApp
//
//  Created by Andrew Copp on 5/20/13.
//  Copyright (c) 2013 Brian Peterman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WorkersViewController.h"

@interface AddShiftCustom_View : UIView

@property (strong, nonatomic) UILabel *titleWorker;
@property (strong, nonatomic) UILabel *titleDate;
@property (strong, nonatomic) UILabel *titleHours;
@property (strong, nonatomic) UILabel *titleNotes;
@property (strong, nonatomic) UITextField *dateTextField;
@property (strong, nonatomic) UITextField *notesTextField;
@property (strong, nonatomic) UITextField *hoursTextField;
@property (strong, nonatomic) UIDatePicker *datePicker;
@property (strong, nonatomic) UILabel *nameOfWorker;
@property (strong,nonatomic) UIToolbar *pickerToolBar;

@property (strong, nonatomic) WorkersViewController *forNameOfEmployee;

- (IBAction)doneSelector:(id)sender;

@end

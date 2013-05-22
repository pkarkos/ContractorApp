//
//  AddWorkerViewController.h
//  employeeApp
//
//  Created by Brian Peterman on 5/16/13.
//  Copyright (c) 2013 Brian Peterman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddWorkerCustomView.h"
#import "employee.h"

@class AddWorkerViewController;

@protocol AddWorkerViewControllerDelegate <NSObject>

-(void) addItemViewController: (AddWorkerViewController *)controller didFinishEnteringItem:(employee *)item;

@end
 
@interface AddWorkerViewController : UIViewController <AddWorkerViewControllerDelegate, UIPickerViewDataSource, UIPickerViewDelegate>
{
    UIPickerView *pickerView;
}

@property (strong, nonatomic) AddWorkerCustomView *view;
@property (strong, nonatomic) NSMutableArray *gradYearPickerRange;
@property (nonatomic, weak) id <AddWorkerViewControllerDelegate> delegate;
@property (nonatomic, strong) IBOutlet UIPickerView *pickerView;

@end

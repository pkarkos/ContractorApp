//
//  AddShiftViewController.m
//  employeeApp
//
//  Created by Andrew Copp on 5/17/13.
//  Copyright (c) 2013 Brian Peterman. All rights reserved.
//

#import "AddShiftViewController.h"
#import "HoursViewController.h"
#import "shift.h"
#import "employee.h"

@interface AddShiftViewController ()

@end

@implementation AddShiftViewController

@synthesize forNameOfEmployee;
@synthesize nameOfWorker;
@synthesize delegateForWorkersViewController;

-(id) init
{
    
    self=[super init];
    return self;
}

-(id) initWithArray:(NSString *)_nameString
{
    nameString = [[NSString alloc] init];
    nameString=_nameString;

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle: @"Add Shift"];
    
    self.view = [[AddShiftCustom_View alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width,self.view.frame.size.height)];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Confirm" style: UIButtonTypeRoundedRect target: self action: @selector(saveToHoursView)];

    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Back" style:UIButtonTypeRoundedRect target: self action: @selector(backToHoursView)];
    

    
}


- (void) saveToHoursView
{
    double hoursDouble = [self.view.hoursTextField.text doubleValue];
 
    //NSDate *dateString = self.view.datePicker;                //Incomplete
    if ([self.view.hoursTextField.text isEqualToString:@""] || self.view.hoursTextField.text == nil)
        [self backToHoursView];
    else{
        shift *addShiftInfo =[[shift alloc] initTempHours:hoursDouble notes:self.view.notesTextField.text];
        [self.delegate addItemViewController:self didFinishEnteringItem: addShiftInfo];
        [self backToHoursView];
        
        self.nameOfWorker = [[UILabel alloc] initWithFrame:CGRectMake(30, 55, 180, 15)];
        [self.nameOfWorker setBackgroundColor:[UIColor yellowColor]];
        [self.nameOfWorker setText:nameString];
        
        
    }
    

    

                        
}

- (void) backToHoursView
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 1;
//}

//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//#warning Incomplete method implementation.
//    // Return the number of rows in the section.
//    return 0;
//}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    static NSString *CellIdentifier = @"Cell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
//    
//    // Configure the cell...
//    
//    return cell;
//}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end

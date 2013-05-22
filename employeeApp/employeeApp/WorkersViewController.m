//
//  WorkersViewController.m
//  employeeApp
//
//  Created by Brian Peterman on 5/15/13.
//  Copyright (c) 2013 Brian Peterman. All rights reserved.
//

#import "WorkersViewController.h"
#import "employee.h"
#import "AddWorkerCustomView.h"
#import "AddWorkerViewController.h"
#import "HoursViewController.h"
#import "AddShiftViewController.h"


@implementation WorkersViewController
@synthesize workersArray;


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self setTitle:@"Workers"];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"+" style: UIBarButtonSystemItemAdd target:self action: @selector(changeToAddWorkerScreen)];
    self.workersArray = [[NSMutableArray alloc] init];
    
    
}

//  Override inherited implementation to automatically refresh the table
//  view's data.
//
-(void) giveNameToAddShiftViewController
{
    [[self tableView] reloadData];
    employee *giveNameString =[self.workersArray objectAtIndex:0];
    NSString *givesNameString = giveNameString.name;
    
    AddShiftViewController *passToAddShiftViewController = [[AddShiftViewController alloc] initWithArray:givesNameString];
    
    [self.navigationController pushViewController:passToAddShiftViewController animated:YES];
    NSLog(@"Sent Info");
}

-(void) addItemViewController:(AddWorkerViewController *)controller didFinishEnteringItem:(employee *)item
{
    [self.workersArray addObject:item];
}

- (void)changeToAddWorkerScreen
{
    AddWorkerViewController *workerView= [[AddWorkerViewController alloc] init];
    workerView.delegate= self;
    [[self navigationController] pushViewController: workerView animated:YES];
    
       
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [[self tableView] reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:numberOfRowsInSection
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [self.workersArray count];
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    HoursViewController *hoursView = [[HoursViewController alloc] init];
    hoursView.myEmployee = [self.workersArray objectAtIndex: indexPath.row];
    [[self navigationController] pushViewController:hoursView animated:YES];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if ( cell == nil ) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell
    employee *selectedCell = [self.workersArray objectAtIndex:indexPath.row];
    
    NSString *additionOfHours = [selectedCell.name stringByAppendingString: [NSString stringWithFormat:@"  %.02f",[selectedCell getHours]]];
    cell.textLabel.text = additionOfHours;

    
    //[cell  setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    return cell;
}

@end

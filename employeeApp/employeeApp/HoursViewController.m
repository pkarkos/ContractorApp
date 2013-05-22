//
//  HoursViewController.m
//  employeeApp
//
//  Created by Andrew Copp on 5/17/13.
//  Copyright (c) 2013 Brian Peterman. All rights reserved.
//

#import "HoursViewController.h"
#import "ShiftViewController.h"
#import "shift.h"


@interface HoursViewController ()

@end

@implementation HoursViewController

@synthesize myEmployee;


-(id) initWithWorker:(employee *)worker
{
    self = [super init];
    if (self)
    {
    self.myEmployee = worker;
    }
    return self;
}

-(void) addItemViewController:(AddShiftViewController *)controller didFinishEnteringItem:(shift *)item
{
    [self.myEmployee.hoursArray addObject:item];
    [[self tableView] reloadData];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [self setTitle:@"Shifts"];
    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonSystemItemAdd target:self action:@selector(backToWorkersScreen)];
    
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"+" style:UIBarButtonSystemItemAdd target:self action:@selector(addShiftScreen)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
 
-(void)backToWorkersScreen
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(void)addShiftScreen
{
    AddShiftViewController *addShiftView = [[AddShiftViewController alloc] initWithWorkerName:self.myEmployee.name];
    [addShiftView setDelegate:self];                                            //**Add delegate**
    [self.navigationController pushViewController: addShiftView animated:YES];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.myEmployee.hoursArray count];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
     ShiftViewController *shiftView = [[ShiftViewController alloc] init];
    [[self navigationController] pushViewController: shiftView animated:YES];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if ( cell == nil ) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell
    shift *selectedCell = [self.myEmployee.hoursArray objectAtIndex:indexPath.row ];
   
    NSString *dateAndHoursLabel = [NSString stringWithFormat: @"%.02f", selectedCell.hours];
    cell.textLabel.text =  dateAndHoursLabel;

    return cell;
}



@end

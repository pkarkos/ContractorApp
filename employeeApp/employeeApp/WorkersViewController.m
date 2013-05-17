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
    //employee *brian = [[employee alloc] initWithName: @"Brian" andGradYear: 2014];
    //employee *peter = [[employee alloc] initWithName:@"Peter" andGradYear:2016];
    self.workersArray = [[NSMutableArray alloc] init];
    
    //[self.workersArray addObject:brian];
    //[self.workersArray addObject:peter];
    
    NSLog(@"%d",[workersArray count]);
    
}

//  Override inherited implementation to automatically refresh the table
//  view's data.
//

- (void)changeToAddWorkerScreen
{
    //AddWorkerCustomView *workerView= [[AddWorkerCustomView alloc] initWithNibName: nil bundle: NULL];
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
    return [self.workersArray count];
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [self.workersArray count];
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

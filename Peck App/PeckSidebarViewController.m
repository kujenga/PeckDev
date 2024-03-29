//
//  PeckSidebarViewController.m
//  Peck App
//
//  Created by Aaron Taylor on 3/5/14.
//  Copyright (c) 2014 Peck App. All rights reserved.
//

#import "PeckSidebarViewController.h"
#import "PeckEventsViewController.h"
#import "PeckNotificationsViewController.h"
#import "PeckDiningMenusViewController.h"
#import "PeckCirclesViewController.h"
#import "PeckFeedbackViewController.h"
#import "PeckSettingsViewController.h"

#import "SWRevealViewController.h"


//#define SCREEN_HEIGHT 568
#define IS_IPHONE5 (([[UIScreen mainScreen] bounds].size.height-568)?NO:YES)


@interface PeckSidebarViewController () {
    
    NSArray * menuItems;
    NSInteger SCREEN_HEIGHT;
}

@end


@implementation PeckSidebarViewController



- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super init];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    menuItems = @[@"My Horizon",@"Athletics",@"Campus Events",@"After Hours",@"Pecks",@"Dining",@"Circles",@"Feedback",@"Settings"];
    
    self.menuTable.dataSource = self;
    self.menuTable.delegate = self;
    
    self.menuTable.backgroundColor = [UIColor clearColor];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    SCREEN_HEIGHT = [UIScreen mainScreen].bounds.size.height;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [menuItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString *CellIdentifier = menuItems[indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier forIndexPath: indexPath];
    
    return cell;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

    CGFloat h;
    if (indexPath.row == 0) {
        h = 75.0;
    } else {
        h = (SCREEN_HEIGHT - 65) / ([menuItems count] - 1);
    }
    return h;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        
    }
    cell.backgroundColor = [UIColor colorWithWhite:0.3 alpha:0.15];
}

#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([sender isKindOfClass:[UITableViewCell class]]) {
        if ([segue.destinationViewController isKindOfClass:[PeckEventsViewController class]]) {
            if ([sender isKindOfClass:[UITableViewCell class]]) {
                UITableViewCell * clickedCell = (UITableViewCell*)sender;
                PeckEventsViewController * eventsController = (PeckEventsViewController*)segue.destinationViewController;
                eventsController.titleText = clickedCell.reuseIdentifier;
            }
        } else if ([segue.destinationViewController isKindOfClass:[PeckNotificationsViewController class]]) {
            
        } else if ([segue.destinationViewController isKindOfClass:[PeckDiningMenusViewController class]]) {
            
        } else if ([segue.destinationViewController isKindOfClass:[PeckCirclesViewController class]]) {
            
        } else if ([segue.destinationViewController isKindOfClass:[PeckFeedbackViewController class]]) {
            
        } else if ([segue.destinationViewController isKindOfClass:[PeckSettingsViewController class]]) {
            
        } else {
            
        }
    }
    
    if ( [segue isKindOfClass: [SWRevealViewControllerSegue class]] )
    {
        SWRevealViewControllerSegue* rvcs = (SWRevealViewControllerSegue*) segue;
        
        SWRevealViewController* rvc = self.revealViewController;
        NSAssert( rvc != nil, @"oops! must have a revealViewController" );
        
        NSAssert( [rvc.frontViewController isKindOfClass: [UINavigationController class]], @"oops!  for this segue we want a permanent navigation controller in the front!" );
        
        rvcs.performBlock = ^(SWRevealViewControllerSegue* rvc_segue, UIViewController* svc, UIViewController* dvc)
        {
            UINavigationController* nc = [[UINavigationController alloc] initWithRootViewController:dvc];
            [rvc setFrontViewController:nc animated:YES];
        };
    }
}


@end

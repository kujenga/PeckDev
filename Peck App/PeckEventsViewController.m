//
//  PeckEventsViewController.m
//  Peck App
//
//  Created by Aaron Taylor on 3/5/14.
//  Copyright (c) 2014 Peck App. All rights reserved.
//

#import "PeckAppDelegate.h"
#import "PeckEventsViewController.h"
#import "PeckInitialViewController.h"
#import "PeckEventInfoViewController.h"
#import "PeckEventCell.h"

#import "SWRevealViewController.h"

@interface PeckEventsViewController () {

    NSMutableArray * events;
}

@property (weak,nonatomic) PeckEventInfoViewController * destViewController;


@end

@implementation PeckEventsViewController

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
    
    events = [@[@"Event 1",@"Event 2",@"Event 3",@"Event 4"] mutableCopy];
    
    // Change button color
    //_sidebarButton.tintColor = [UIColor colorWithWhite:0.96f alpha:0.2f];
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    self.navigationItem.title = self.titleText;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    UIRefreshControl * refresh = [[UIRefreshControl alloc] init];
    refresh.attributedTitle = [[NSAttributedString alloc] initWithString:@"Pull for previous events"];
    refresh.tintColor = [UIColor darkGrayColor];
    [refresh addTarget:self action:@selector(updateEvents) forControlEvents:UIControlEventValueChanged];
    self.refreshControl = refresh;
    
    
    
    
}

- (void) viewWillAppear:(BOOL)animated
{
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) updateEvents
{
    [events removeAllObjects];
    for (int i = 1; i < 5; i++) {
        [events addObject:[NSString stringWithFormat:@"Event %d",(rand()%1000)]];
    }
    [self.tableView reloadData];
    
    [self performSelector:@selector(stopRefresh) withObject:nil afterDelay:1.0];
}

- (void)stopRefresh

{
    [self.refreshControl endRefreshing];
}

-(IBAction)logoutClicked:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"loginSaved"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    //PeckLoginViewController * loginController = [[PeckLoginViewController alloc] init];
    //[self.navigationController pushViewController:loginController animated:YES];
    
    UIStoryboard * storyboardobj=[UIStoryboard storyboardWithName:@"LoginStoryboard" bundle:nil];
    UIViewController * view = [storyboardobj instantiateInitialViewController];
    
    PeckAppDelegate *appDel=(PeckAppDelegate *) [UIApplication sharedApplication].delegate;
    
    [appDel.window setRootViewController:view];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [events count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"EventCell";
    PeckEventCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"PeckEventCell" bundle:nil] forCellReuseIdentifier:@"EventCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    }
    return cell;
}

- (void) tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Configure the cell...
    NSDictionary *attributes = [NSDictionary dictionaryWithObjects:@[events[indexPath.row],@"1:30 pm",@"Peck HQ",@"w"]
                                                           forKeys:@[@"title",@"time",@"location",@"image"]];
    [(PeckEventCell*)cell setAttributes:attributes];
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80.0;
}

-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return @"Today's Events";
    } else {
        return @"Tomorrow's Events";
    }
}

#pragma mark - Table view delegate

-(NSIndexPath*) tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.tableView selectRowAtIndexPath:indexPath animated:YES scrollPosition:UITableViewScrollPositionNone];
    return indexPath;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"PushEventInfo" sender:self];
    [self.destViewController passInfo:events[indexPath.row]];
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    UIViewController * dest = [segue destinationViewController];
    
    if ([dest isKindOfClass:[PeckEventInfoViewController class]]) {
        self.destViewController = (PeckEventInfoViewController*) dest;
    }
}



@end

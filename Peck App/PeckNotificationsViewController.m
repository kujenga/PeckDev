//
//  PeckNotificationsViewController.m
//  PeckDev
//
//  Created by Aaron Taylor on 3/6/14.
//  Copyright (c) 2014 Peck App. All rights reserved.
//

#import "PeckNotificationsViewController.h"
#import "SWRevealViewController.h"

@interface PeckNotificationsViewController ()

@end

@implementation PeckNotificationsViewController

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
	// Do any additional setup after loading the view.
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    self.navigationItem.title = @"Pecks";

    [self.navigationItem setLeftBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"Menu"
                                                                               style:UIBarButtonItemStylePlain
                                                                              target:self.revealViewController
                                                                              action:@selector(revealToggle:)]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View data source

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"Day %ld",(long)section];
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"PeckCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    // Configure the cell...
    NSInteger group = indexPath.row;
    cell.textLabel.text = [NSString stringWithFormat:@"Peck number %ld",(long)group];
    
    return cell;
}



#pragma mark - Table View delegate

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

-(void) tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

@end

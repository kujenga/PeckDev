//
//  PeckEventsViewController.h
//  Peck App
//
//  Created by Aaron Taylor on 3/5/14.
//  Copyright (c) 2014 Peck App. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PeckEventsViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UIBarButtonItem * sidebarButton;

-(IBAction)logoutClicked:(id)sender;


@end

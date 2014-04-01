//
//  PeckSidebarViewController.h
//  Peck App
//
//  Created by Aaron Taylor on 3/5/14.
//  Copyright (c) 2014 Peck App. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PeckSidebarViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

// image underlying the transparent button options
@property (weak,nonatomic) IBOutlet UIImageView * backgroundImage;
@property (weak,nonatomic) IBOutlet UITableView * menuTable;

@end

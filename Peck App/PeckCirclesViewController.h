//
//  PeckCirclesViewController.h
//  PeckDev
//
//  Created by Aaron Taylor on 3/6/14.
//  Copyright (c) 2014 Peck App. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PeckCirclesViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>


@property (weak, nonatomic) IBOutlet UITableView *circlesTableView;

@end

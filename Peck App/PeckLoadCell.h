//
//  PeckLoadCell.h
//  PeckDev
//
//  Created by Aaron Taylor on 3/15/14.
//  Copyright (c) 2014 Peck App. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PeckLoadCell : UITableViewCell

@property (weak,nonatomic) IBOutlet UILabel *loadMessage;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activity;


-(void) setMessage:(NSString*) message;

@end

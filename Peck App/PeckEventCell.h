//
//  PeckEventCell.h
//  PeckDev
//
//  Created by Aaron Taylor on 3/15/14.
//  Copyright (c) 2014 Peck App. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PeckEventCell : UITableViewCell

@property (weak,nonatomic) IBOutlet UIImageView *iconImage;
@property (weak,nonatomic) IBOutlet UILabel *eventTitle;
@property (weak,nonatomic) IBOutlet UILabel *eventTime;
@property (weak,nonatomic) IBOutlet UILabel *eventLocation;
@property (weak, nonatomic) IBOutlet UIView *checkButton;

-(void) setAttributes:(NSDictionary*) attributes;

@end

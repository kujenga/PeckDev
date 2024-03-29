//
//  PeckEventCell.m
//  PeckDev
//
//  Created by Aaron Taylor on 3/15/14.
//  Copyright (c) 2014 Peck App. All rights reserved.
//

#import "PeckEventCell.h"

@interface PeckEventCell () {
    
}

@end

@implementation PeckEventCell

@synthesize eventTitle,eventTime,eventLocation;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
    }
    
    return self;
}

-(void) setAttributes:(NSDictionary *)attributes
{
    self.eventTitle.text = [attributes objectForKey:@"title"];
    self.eventTime.text = [attributes objectForKey:@"time"];
    self.eventLocation.text = [attributes objectForKey:@"location"];
    NSString * imageName = [attributes objectForKey:@"image"];
    if (imageName) {
        [self.iconImage setImage:[UIImage imageNamed:imageName]];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

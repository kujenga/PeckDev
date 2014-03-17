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

/*
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //initialization
    }
    return self;
}
*/
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        /*
        // Helpers
        CGSize size = self.contentView.frame.size;
        
        // Initialize Title Label
        self.eventTitle = [[UILabel alloc] initWithFrame:CGRectMake(8.0, 8.0, size.width - 16.0, size.height - 16.0)];
        // Configure Title Label
        [self.eventTitle setFont:[UIFont boldSystemFontOfSize:24.0]];
        [self.eventTitle setTextAlignment:NSTextAlignmentCenter];
        [self.eventTitle setTextColor:[UIColor orangeColor]];
        [self.eventTitle setAutoresizingMask:(UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight)];
        // Add Title Label to Content View
        [self.contentView addSubview:self.eventTitle];
        
        // Initialize Time Label
        self.eventTime = [[UILabel alloc] initWithFrame:CGRectMake(8.0, 8.0, size.width - 16.0, size.height - 16.0)];
        // Configure Time Label
        [self.eventTime setFont:[UIFont boldSystemFontOfSize:24.0]];
        [self.eventTime setTextAlignment:NSTextAlignmentCenter];
        [self.eventTime setTextColor:[UIColor orangeColor]];
        [self.eventTime setAutoresizingMask:(UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight)];
        // Add Time Label to Content View
        [self.contentView addSubview:self.eventTime];
        
        
        // Initialize Location Label
        self.eventLocation = [[UILabel alloc] initWithFrame:CGRectMake(8.0, 8.0, size.width - 16.0, size.height - 16.0)];
        // Configure Location Label
        [self.eventLocation setFont:[UIFont boldSystemFontOfSize:24.0]];
        [self.eventLocation setTextAlignment:NSTextAlignmentCenter];
        [self.eventLocation setTextColor:[UIColor orangeColor]];
        [self.eventLocation setAutoresizingMask:(UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight)];
        // Add Location Label to Content View
        [self.contentView addSubview:self.eventLocation];
         */
    }
    
    return self;
}

-(void) setAttributes:(NSDictionary *)attributes
{
    self.eventTitle.text = [attributes objectForKey:@"title"];
    self.eventTime.text = [attributes objectForKey:@"time"];
    self.eventLocation.text = [attributes objectForKey:@"location"];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

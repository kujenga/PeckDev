//
//  PeckTutorialContentViewController.h
//  PeckDev
//
//  Created by Aaron Taylor on 3/12/14.
//  Copyright (c) 2014 Peck App. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PeckTutorialContentViewController : UIViewController

@property NSUInteger pageIndex;
@property NSString *titleText;
@property (strong,nonatomic) NSString *imageFile;

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

//
//  PeckTutorialContentViewController.m
//  PeckDev
//
//  Created by Aaron Taylor on 3/12/14.
//  Copyright (c) 2014 Peck App. All rights reserved.
//

#import "PeckTutorialContentViewController.h"

@interface PeckTutorialContentViewController ()



@end

@implementation PeckTutorialContentViewController

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
    
    self.backgroundImageView.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:self.imageFile ofType:@"jpg"]];
    self.titleLabel.text = self.titleText;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

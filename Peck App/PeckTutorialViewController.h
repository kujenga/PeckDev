//
//  PeckTutorialViewController.h
//  PeckDev
//
//  Created by Aaron Taylor on 3/12/14.
//  Copyright (c) 2014 Peck App. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PeckTutorialViewController : UIPageViewController <UIPageViewControllerDataSource>

@property (strong, nonatomic) NSArray *pageTitles;
@property (strong, nonatomic) NSArray *pageImages;

@end

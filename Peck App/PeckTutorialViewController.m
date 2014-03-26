//
//  PeckTutorialViewController.m
//  PeckDev
//
//  Created by Aaron Taylor on 3/12/14.
//  Copyright (c) 2014 Peck App. All rights reserved.
//

#import "PeckTutorialViewController.h"
#import "PeckTutorialContentViewController.h"

#import "PeckAppDelegate.h"

@interface PeckTutorialViewController ()

@end

@implementation PeckTutorialViewController

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
    self.pageTitles = @[@"A Tree", @"Stone Cairn", @"Clouds in the Sky",@"Drops on a Flower"];
    self.pageImages = @[@"tree", @"stone", @"clouds",@"pink"];
    
    self.dataSource = self;
    
    PeckTutorialContentViewController *startingViewController = [self viewControllerAtIndex:0];
    NSArray *viewControllers = @[startingViewController];
    
    [self setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    // Change the size of page view controller
    self.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    UIButton *begin = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width/2)-75, 450.0, 150.0, 50.0)];
    [begin setTitle:@"Begin using Peck" forState:UIControlStateNormal];
    [begin setTitleColor:[UIColor colorWithRed:0 green:122.0/255.0 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
    [begin setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [begin addTarget:self action:@selector(beginUsingPeck) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:begin];
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) beginUsingPeck
{
    
    UIStoryboard * storyboardobj=[UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController * view = [storyboardobj instantiateInitialViewController];
    
    PeckAppDelegate *appDel=(PeckAppDelegate *) [UIApplication sharedApplication].delegate;
    
    [appDel.window setRootViewController:view];
}

- (PeckTutorialContentViewController *)viewControllerAtIndex:(NSUInteger)index
{
    if (([self.pageTitles count] == 0) || (index >= [self.pageTitles count])) {
        return nil;
    } else if (index == [self.pageTitles count]) {
        // Create a new view controller and pass suitable data.
        // set the flag to true so that it creates a button to finish the tutorial
        return nil;
    } else {
    
        // Create a new default view controller and pass suitable data.
        PeckTutorialContentViewController *contentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageContentController"];
        contentViewController.imageFile = self.pageImages[index];
        contentViewController.titleText = self.pageTitles[index];
        contentViewController.pageIndex = index;
        
        return contentViewController;
    }
}

#pragma mark - Page View Controller Data Source

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return [self.pageTitles count];
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    return 0;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = ((PeckTutorialContentViewController*) viewController).pageIndex;
    
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    
    index--;
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = ((PeckTutorialContentViewController*) viewController).pageIndex;
    
    if (index == NSNotFound) {
        return nil;
    }
    
    index++;
    if (index == [self.pageTitles count]) {
        return nil;
    }
    return [self viewControllerAtIndex:index];
}

@end

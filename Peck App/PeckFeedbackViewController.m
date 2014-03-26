//
//  PeckFeedbackViewController.m
//  PeckDev
//
//  Created by Aaron Taylor on 3/6/14.
//  Copyright (c) 2014 Peck App. All rights reserved.
//

#import "PeckFeedbackViewController.h"
#import "SWRevealViewController.h"

@interface PeckFeedbackViewController () {
    const NSString * placeholderText;
}

@property (weak, nonatomic) IBOutlet UITextView *feedback;
@property (weak, nonatomic) IBOutlet UIButton *submit;

@end

@implementation PeckFeedbackViewController

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
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    self.navigationItem.title = @"Feedback";
    [self.navigationItem setLeftBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"Menu"
                                                                               style:UIBarButtonItemStylePlain
                                                                              target:self.revealViewController
                                                                              action:@selector(revealToggle:)]];
    placeholderText = @"Please enter your feedback";
    self.feedback.text = [placeholderText copy];
    self.feedback.textColor = [UIColor grayColor];
    
    self.feedback.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    
    [self.feedback endEditing:YES];
}

#pragma mark - UITextView delegate

-(void) textViewDidBeginEditing:(UITextView *)textView {
    if ([textView.text isEqualToString:[placeholderText copy]]) {
        textView.text = @"";
        textView.textColor = [UIColor blackColor];
    }
}

@end

//
//  PeckEventInfoViewController.h
//  Peck App
//
//  Created by Aaron Taylor on 3/5/14.
//  Copyright (c) 2014 Peck App. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PeckEventInfoViewController : UIViewController {
    
}


@property IBOutlet UINavigationItem * navBar;
@property IBOutlet UILabel * eventTitle;

-(void) passInfo:(NSString*) title;

@end

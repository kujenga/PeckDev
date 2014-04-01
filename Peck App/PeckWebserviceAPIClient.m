//
//  PeckWebserviceAPIClient.m
//  PeckDev
//
//  Created by Aaron Taylor on 3/31/14.
//  Copyright (c) 2014 Peck App. All rights reserved.
//

#import "PeckWebserviceAPIClient.h"



@implementation PeckWebserviceAPIClient

static NSString * const kPeckWebserviceAPIBaseURLString = @"https://www.webservice.peckapp.com/api/";

// to be stored in NSUserDefaults???
static NSString * const kPeckWebserviceAPIUserId = @"YOUR_USER_ID";
static NSString * const kPeckWebserviceAPISchoolId = @"CUSTOM_SCHOOL_ID";
static NSString * const kPeckWebserviceAPIApplicationId = @"WL0TRY01";

+(PeckWebserviceAPIClient*)sharedClient {
    static PeckWebserviceAPIClient *sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedClient = [[PeckWebserviceAPIClient alloc] initWithBaseURL:[NSURL URLWithString:kPeckWebserviceAPIBaseURLString]];
    });
    
    return sharedClient;
}

-(id)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:url];
    if (self) {
        
        
    }
    return self;
}



@end

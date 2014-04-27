//
//  PeckWebserviceAPIClient.h
//  PeckDev
//
//  This singleton class will be used to manage the API calls to the server
//
//  Created by Aaron Taylor on 3/31/14.
//  Copyright (c) 2014 Peck App. All rights reserved.
//

#import "AFHTTPSessionManager.h"
#import "PeckWebserviceAPIClient_Calls.h"

@interface PeckWebserviceAPIClient : AFHTTPSessionManager

+(PeckWebserviceAPIClient*)sharedClient;

@end

//
//  PeckWebserviceSyncEngine.h
//  PeckDev
//
//  This singleton class will manage the synchronization process of the core data model and the server
//
//  Created by Aaron Taylor on 4/1/14.
//  Copyright (c) 2014 Peck App. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PeckWebserviceSyncEngine : NSObject

+(PeckWebserviceSyncEngine*)sharedEngine;
- (void)startSync;

@property (atomic, readonly) BOOL syncInProgress;

@end

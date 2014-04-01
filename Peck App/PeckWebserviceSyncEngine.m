//
//  PeckWebserviceSyncEngine.m
//  PeckDev
//
//  Created by Aaron Taylor on 4/1/14.
//  Copyright (c) 2014 Peck App. All rights reserved.
//

#import "PeckWebserviceSyncEngine.h"
#import "PeckAppDelegate.h"

@interface PeckWebserviceSyncEngine () {
    
}

@property NSMutableArray *registeredClassesToSync;

@end

@implementation PeckWebserviceSyncEngine

+ (PeckWebserviceSyncEngine *)sharedEngine {
    static PeckWebserviceSyncEngine *sharedEngine = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedEngine = [[PeckWebserviceSyncEngine alloc] init];
    });
    
    return sharedEngine;
}

// This method is called in order to star the process of synchronizing the core data model with the server
// should possibly implement a delegate to reflect the changes to the core data model in the UI
- (void)startSync {
    if (!self.syncInProgress) {
        [self willChangeValueForKey:@"syncInProgress"];
        _syncInProgress = YES;
        [self didChangeValueForKey:@"syncInProgress"];
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
            [self downloadDataForRegisteredObjects:YES];
        });
    }
}

// This should not be classes, but rather method calls based on our existing API that was designed by STPL
- (void)registerNSManagedObjectClassToSync:(Class)aClass {
    if (!self.registeredClassesToSync) {
        self.registeredClassesToSync = [NSMutableArray array];
    }
    
    if ([aClass isSubclassOfClass:[NSManagedObject class]]) {
        if (![self.registeredClassesToSync containsObject:NSStringFromClass(aClass)]) {
            [self.registeredClassesToSync addObject:NSStringFromClass(aClass)];
        } else {
            NSLog(@"Unable to register %@ as it is already registered", NSStringFromClass(aClass));
        }
    } else {
        NSLog(@"Unable to register %@ as it is not a subclass of NSManagedObject", NSStringFromClass(aClass));
    }
    
}

- (NSDate *)mostRecentUpdatedAtDateForEntityWithName:(NSString *)entityName {
    __block NSDate *date = nil;
    //
    // Create a new fetch request for the specified entity
    //
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:entityName];
    //
    // Set the sort descriptors on the request to sort by updatedAt in descending order
    //
    [request setSortDescriptors:[NSArray arrayWithObject:
                                 [NSSortDescriptor sortDescriptorWithKey:@"updatedAt" ascending:NO]]];
    //
    // You are only interested in 1 result so limit the request to 1
    //
    [request setFetchLimit:1];
    //XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
    // This may cause the UI to block. Look into the SDCoreDataController in the project this is based off of
    //XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
    [[(PeckAppDelegate*)[UIApplication sharedApplication].delegate managedObjectContext] performBlockAndWait:^{
        NSError *error = nil;
        NSArray *results = [[(PeckAppDelegate*)[UIApplication sharedApplication].delegate managedObjectContext] executeFetchRequest:request error:&error];
        if ([results lastObject])   {
            //
            // Set date to the fetched result
            //
            date = [[results lastObject] valueForKey:@"updatedAt"];
        }
    }];
    
    return date;
}


-(void)downloadDataForRegisteredObjects:(BOOL)useUpdatedAtDate {
    
}

@end

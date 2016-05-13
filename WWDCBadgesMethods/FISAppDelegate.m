//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

- (NSString *) badgeForSpeaker:(NSString *)speaker {
    
    NSString *welcome = [@"Hello, my name is " stringByAppendingFormat:@"%@.", speaker];
    
    return welcome;
}

- (NSArray *) badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *sayHelloSpeakers = [[NSMutableArray alloc] init];
   
    for (NSUInteger allSpeakers = 0; allSpeakers < [speakers count] ; allSpeakers++){
        
        NSString *sayHello = @"Hello, my name is ";
        NSString *sayName = [NSString stringWithFormat:@"%@.", speakers[allSpeakers]];
        NSString *completeBadge = [sayHello stringByAppendingString:sayName];
        NSLog(@"%@", completeBadge);
        [sayHelloSpeakers addObject:completeBadge];
      
    }
    
    return sayHelloSpeakers;
    
}

- (NSArray *) greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *rooms = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        NSString *welcome = @"Welcome, ";
        NSString *name = [NSString stringWithFormat:@"%@! ", speakers[i]];
        NSString *room = @"You'll be in dressing room ";
        NSString *roomNumber = [NSString stringWithFormat:@"%li.", i + 1];
        NSString *welcomeSpeaker = [welcome stringByAppendingString:name];
        NSString *speakersRoom = [room stringByAppendingString:roomNumber];
        NSString *badgesAndRooms = [welcomeSpeaker stringByAppendingString:speakersRoom];
        NSLog(@"%@", badgesAndRooms);
        [rooms addObject:badgesAndRooms];
        }
    
    
    
    return rooms;
}
@end

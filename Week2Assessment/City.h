//
//  City.h
//  Week2Assessment
//
//  Created by Ryan Tiltz on 5/22/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject
@property NSString *fullName;
@property NSString *fullNameState;

-(City *) initWithName: (NSString *) name andState: (NSString *) state;
@end

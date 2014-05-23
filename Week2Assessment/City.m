//
//  City.m
//  Week2Assessment
//
//  Created by Ryan Tiltz on 5/22/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import "City.h"

@implementation City

-(City *) initWithName: (NSString *) name andState: (NSString *) state
    {
        self.fullName = name;
        self.fullNameState = state;

        return self;
    }


@end

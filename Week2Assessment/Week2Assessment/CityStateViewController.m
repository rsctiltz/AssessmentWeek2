//
//  CityStateViewController.m
//  Week2Assessment
//
//  Created by Ryan Tiltz on 5/22/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import "CityStateViewController.h"

@interface CityStateViewController ()
@property (strong, nonatomic) IBOutlet UITextField *myCityNames;
@property (strong, nonatomic) IBOutlet UITextField *myStateNames;



@end

@implementation CityStateViewController

- (void)viewDidLoad

{
    [super viewDidLoad];
    self.myCityNames.text = self.city.fullName;
    self.myStateNames.text = self.city.fullNameState;
}

@end

//
//  ViewController.m
//  Week2Assessment
//
//  Created by Ryan Tiltz on 5/22/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import "ViewController.h"
#import "City.h"
#import "CityStateViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *myTableView;
@property NSMutableArray *cities;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    City *city1 = [[City alloc] initWithName:@"Chicago" andState:@"Illinos"];
    City *city2 = [[City alloc] initWithName:@"New York" andState:@"New York"];
    City *city3 = [[City alloc] initWithName:@"Boston" andState:@"Massachusetts"];
    City *city4 = [[City alloc] initWithName:@"Dallas" andState:@"Texas"];

    self.cities = [NSMutableArray arrayWithObjects:city1, city2, city3, city4, nil];

    for (City *city in self.cities)
    {
        NSLog(@"city: %@", city);

    }
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.cities.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellID"];
    City *city = [self.cities objectAtIndex:indexPath.row];
    cell.textLabel.text = city.fullName;
    return cell;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *selectedIndexPath = self.myTableView.indexPathForSelectedRow;
    City *city = [self.cities objectAtIndex:selectedIndexPath.row];
    CityStateViewController *nextViewController = segue.destinationViewController;
    nextViewController.city = city;
}

@end

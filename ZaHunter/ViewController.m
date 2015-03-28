//
//  ViewController.m
//  ZaHunter
//
//  Created by Leandro Pessini on 3/25/15.
//  Copyright (c) 2015 Brazuca Labs. All rights reserved.
//

#import "ViewController.h"
#import "MapViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Delegate
    self.tableView.delegate = self;
    self.tableView.dataSource = self;


}

#pragma mark -UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PizzaCell"];
    cell.textLabel.text = @"Pizza";

    return cell;
}


#pragma mark -Segue
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"ShowMap"])
    {
        MapViewController *mapVC = segue.destinationViewController;
        mapVC.name = self.navigationItem.title;
    }
}

@end

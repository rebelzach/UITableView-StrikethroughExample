//
//  TTViewController.m
//  tabletest
//
//  Created by Rebelzach on 1/24/13.
//  Copyright (c) 2013 Rebelzach. All rights reserved.
//

#import "TTViewController.h"

@interface TTViewController ()

@end

@implementation TTViewController {
  NSMutableArray *userOwnBookingDataSource;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  if(userOwnBookingDataSource == nil)
    userOwnBookingDataSource = [[NSMutableArray alloc]init];
  
  NSDictionary *bookingEntry1 = @{@"officeName":@"Office 1",
                                 @"hallName":@"Hall 1",
                                 NSStrikethroughStyleAttributeName:@(NSUnderlineStyleSingle)};
  NSDictionary *bookingEntry2 = @{@"officeName":@"Office 2",
                                  @"hallName":@"Hall 2",
                                  NSStrikethroughStyleAttributeName:@(NSUnderlineStyleNone)};
  
  
  [userOwnBookingDataSource addObject:bookingEntry1];
  [userOwnBookingDataSource addObject:bookingEntry2];
  //[self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [userOwnBookingDataSource count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"booking"];
  if (cell == nil) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"booking"];
  }
  NSDictionary *booking = userOwnBookingDataSource[indexPath.row];
  NSDictionary *bookingStringAttributes = @{NSStrikethroughStyleAttributeName:booking[NSStrikethroughStyleAttributeName]};
  NSAttributedString *bookingOffice = [[NSAttributedString alloc] initWithString:booking[@"officeName"]
                                                                    attributes:bookingStringAttributes];
  NSAttributedString *bookingHall = [[NSAttributedString alloc] initWithString:booking[@"hallName"]
                                                                    attributes:bookingStringAttributes];

  [[cell textLabel] setAttributedText:bookingOffice];
  [[cell detailTextLabel] setAttributedText:bookingHall];
  return cell;
}




@end

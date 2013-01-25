//
//  TTAppDelegate.m
//  tabletest
//
//  Created by Rebelzach on 1/24/13.
//  Copyright (c) 2013 Rebelzach. All rights reserved.
//

#import "TTAppDelegate.h"

#import "TTViewController.h"

@implementation TTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  self.viewController = [[TTViewController alloc] init];
  self.window.rootViewController = self.viewController;
  [self.window makeKeyAndVisible];
  return YES;
}

@end

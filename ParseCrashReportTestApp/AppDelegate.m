//
//  AppDelegate.m
//  ParseCrashReportTestApp
//
//  Created by Kanyo Balazs on 06/01/15.
//  Copyright (c) 2015 Kanyo Balazs. All rights reserved.
//

#import "AppDelegate.h"

#import <Parse/Parse.h>
#import <ParseCrashReporting/ParseCrashReporting.h>

#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // 1st step: enable crash reporting
    [ParseCrashReporting enable];
    // 2nd step: set app and client id
    [Parse setApplicationId:@"0iIlEGZQ2JNK5lOL6mrZOwAmHYKfWQy3T13UcFd0" clientKey:@"3IdWKwW401xrELacdETpXrWoZ969RFZN79mLirRn"];

    [self performSelector:@selector(crash) withObject:nil afterDelay:5.0];
    
    return YES;
}

- (void)crash {
    ViewController* vc = (ViewController*)[UIApplication sharedApplication].delegate.window.rootViewController;
    [vc crash2];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

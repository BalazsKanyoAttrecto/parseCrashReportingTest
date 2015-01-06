//
//  ViewController.m
//  ParseCrashReportTestApp
//
//  Created by Kanyo Balazs on 06/01/15.
//  Copyright (c) 2015 Kanyo Balazs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) crash2
{
    [NSException raise:NSGenericException format:@"Everything is ok. This is just a test crash from crash2."];
}
@end

//
//  WTViewController.m
//  WTNetworking
//
//  Created by windtersharp on 03/11/2019.
//  Copyright (c) 2019 windtersharp. All rights reserved.
//

#import "WTViewController.h"
#import <WTTest.h>


@interface WTViewController ()

@end

@implementation WTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    WTOPENSSL_interface();
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

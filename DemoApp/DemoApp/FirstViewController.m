//
//  FirstViewController.m
//  DemoApp
//
//  Created by icoco on 05/04/2020.
//  Copyright © 2020 icoco. All rights reserved.
//

#import "FirstViewController.h"
#import <SDK/SDK.h>
 

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self loadData];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadData {
    //@step
    [ServiceConfigurator setupWorkSpace];
    //@step
    NSNumber* pageIndex = [NSNumber numberWithInteger:1];
    iXKitAppService* serivce = [iXKitAppService list:pageIndex];
    [serivce execute:^(id response) {
        
    } failure:^(NSError *error) {
        
    }];
}

@end

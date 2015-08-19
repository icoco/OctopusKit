//
//  ServiceConfigurator.m
//  OctopusKit
//
//  Created by icoco7 on 8/19/15.
//  Copyright (c) 2015 RobinCheung. All rights reserved.
//

#import "ServiceConfigurator.h"
#import <OctopusKit/OCWebServiceConfig.h>

@implementation ServiceConfigurator

+ (void)setupWorkSpace{
    
    [OCWebServiceConfig sharedInstance].apiRootUrl = @"http://opencart.i2cart.com/index.php";
    
}

@end

//
//  OCWebServiceConfig.h
//  OctopustKit
//
//  Created by icoco7 on 7/19/15.
//  Copyright (c) 2015 RobinCheung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OCWebServiceConfig : NSObject
//version = 2.0.3
@property(nonatomic,strong)NSString* version;

//apiRootUrl = http://opencart.i2cart.com
@property(nonatomic,strong)NSString* apiRootUrl;

+ (instancetype)sharedInstance;
@end

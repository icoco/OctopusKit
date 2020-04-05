//
//  OCWebServiceConfig.h
//  OctopustKit
//
//  Created by icoco7 on 7/19/15.
//  Copyright (c) 2015 RobinCheung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OCWebServiceConfig : NSObject

@property(nonatomic,strong)NSString* version;
 
@property(nonatomic,strong)NSString* apiBaseUrl;

+ (instancetype)sharedInstance;
@end

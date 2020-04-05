//
//  OCWebServiceConfig.m
//  OctopustKit
//
//  Created by icoco7 on 7/19/15.
//  Copyright (c) 2015 RobinCheung. All rights reserved.
//

#import "OCWebServiceConfig.h"
 


@implementation OCWebServiceConfig

+ (instancetype)sharedInstance {
    static OCWebServiceConfig *_instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _instance = [[self alloc] init];
        
        NSLog(@"create:%@",_instance);
    });
    
    return _instance;
}

-(id)init {
    if (self = [super init])  {
   
    }
    return self;
}


@end

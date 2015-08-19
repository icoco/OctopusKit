//
//  OCDataException.m
//  OctopustKit
//
//  Created by icoco7 on 6/21/15.
//  Copyright (c) 2015 RobinCheung. All rights reserved.
//

#import "OCDataException.h"

NSString * const OCExceptionDomain = @"OctopustKit.ExceptionDomain";

@implementation OCDataException
@synthesize code;

+ (OCDataException *)exceptionWithCode:(int)code name:(NSString *)name reason:(NSString *)reason userInfo:(NSDictionary *)userInfo{
    
    OCDataException* exception = (OCDataException*)[OCDataException exceptionWithName:name reason:reason userInfo:userInfo];
    [exception setCode:code];
    return exception;
}

- (void)setCode:(int)value{
    code = value;
}

- (NSString*)description{
    NSString* result = [super description];
    NSString* msg = [NSString stringWithFormat:@"code=[%d],name=[%@],reason=[%@],userInfo=[%@]", self.code,self.name,self.reason, self.userInfo];
    result =[NSString stringWithFormat:@"%@\n%@",msg, result];
    return  result;
    
}

- (void)dealloc{
    
    NSLog(@"dealloc %@", self);
    
}

@end

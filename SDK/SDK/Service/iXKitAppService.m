//
//  iXKitAppService.m
//  SDK
//
//  Created by icoco on 05/04/2020.
//  Copyright © 2020 icoco. All rights reserved.
//

#import "iXKitAppService.h"
#import <OctopusKit/RKHTTPUtilities.h>

@implementation iXKitAppService

/*
 * api: http://www.ixkit.com/api/app
 * method: get
 * purpose: list all app
 * return: json
 */
+ (instancetype)list:(NSNumber*)pageIndex{
    iXKitAppService* service = [[iXKitAppService alloc]init];
    service.route = @"/app";
    service.parameters = OCNSDictionaryOfParametersBindings(pageIndex);
    return service;
}

/*
 * api: http://www.ixkit.com/api/app/13
 * method: get
 * purpose: show app detail
 * return: json
 */
+ (instancetype)detail:(NSString*)id{
    iXKitAppService* service = [[iXKitAppService alloc]init];
    service.route = [NSString stringWithFormat:@"/app/%@",id];
    return service;
}

/*
 * api: http://www.ixkit.com/api/app/
 * method: post
 * purpose: create a new app data
 * return: json
 */
+ (instancetype)create:(NSString*)name{
    iXKitAppService* service = [[iXKitAppService alloc]init];
    service.route = [NSString stringWithFormat:@"/app"];
    service.method = kHTTP_REQUEST_METHOD_POST;
    service.parameters = OCNSDictionaryOfParametersBindings(name);
    return service;
}

/*
 * api: http://www.ixkit.com/api/app/15
 * method: delete
 * purpose: delete a app data by id
 * return: json
 */
+ (instancetype)delete:(NSString*)id{
    iXKitAppService* service = [[iXKitAppService alloc]init];
    service.route = [NSString stringWithFormat:@"/app/%@",id];
    service.method = kHTTP_REQUEST_METHOD_DELETE;
    return service;
}


@end

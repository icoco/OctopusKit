//
//  iXKitAppService.h
//  SDK
//
//  Created by icoco on 05/04/2020.
//  Copyright © 2020 icoco. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <OctopusKit/OCWebService.h>

@interface iXKitAppService  : OCWebService

/*
 * api: http://www.ixkit.com/api/app
 * method: get
 * purpose: list all app
 * return: json
 */
+ (instancetype)list:(NSNumber*)pageIndex;

/*
 * api: http://www.ixkit.com/api/app/
 * method: post
 * purpose: create a new app data
 * return: json
 */
+ (instancetype)create:(NSString*)name;

/*
 * api: http://www.ixkit.com/api/app/15
 * method: delete
 * purpose: delete a app data by id
 * return: json
 */
+ (instancetype)delete:(NSString*)id;

@end

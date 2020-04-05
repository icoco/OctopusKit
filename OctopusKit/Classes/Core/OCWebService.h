//
//  OCWebService.h
//  OctopustKit
//
//  Created by icoco7 on 6/21/15.
//  Copyright (c) 2015 RobinCheung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>
#import "OCDataManager.h"
#import "OCDictionaryUtilities.h"

static NSString* const kHTTP_REQUEST_METHOD_POST = @"POST";
static NSString* const kHTTP_REQUEST_METHOD_GET = @"GET";
static NSString* const kHTTP_REQUEST_METHOD_DELETE = @"DELETE";

@class OCWebService;

@protocol SRServiceDelegate <NSObject>

@required
- (void)onSuccess:(OCWebService*)sender response:(id)response;
@required
- (void)onFailure:(OCWebService*)sender error:(id)error;

@end

/*
 * OCWebService
 */
@interface OCWebService : NSObject

@property(nonatomic,readonly)NSString* serviceId;
@property(nonatomic,strong)NSString* route;
@property(nonatomic,strong)NSDictionary* header;
@property(nonatomic,strong)NSString* method;  //GET|POST default is GET
@property(nonatomic,strong)NSDictionary* parameters;

@property(nonatomic,copy)id(^successFilter)(id response);

@property(nonatomic,weak)id<SRServiceDelegate> delegate;
 

- (NSString*)getUrl;



+ (BOOL)isSuccessOperation:(id)response;

+ (NSException *)dataExceptionWithResponse:(id)response;


/*
 * should set the delegate or else can not got response
 */
- (void)execute;

/*
 * set the success block and failure block directly
 */
- (void)execute:(OCInvokeSuccessBlock)success failure:(OCInvokeFailureBlock)failure ;

@end


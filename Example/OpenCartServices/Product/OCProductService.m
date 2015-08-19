//
//  OCProductService.m
//  OpenCartKit
//
//  Created by icoco7 on 6/22/15.
//  Copyright (c) 2015 i2Cart.com. All rights reserved.
//

#import "OCProductService.h"

@implementation OCProductService

/*
 * @function search
 * @keywords
 * @page
 *
 * @ref: http://opencart.i2cart.com/index.php?route=product/search&search=iphone&page=1&json
 */
+ (instancetype)search:(NSString*)keywords page:(NSUInteger)page_i{
    OCProductService* service = [[OCProductService alloc]init];
    
    NSString* route = @"product/search";
   
    NSString* search = keywords;
    NSNumber* page = [NSNumber numberWithInteger:page_i];
    NSString* json = @"1";
    service.parameters = OCNSDictionaryOfParametersBindings(route,page,search,json);
    
    return service;
}

/*
 * @function getProudctsByCategoryId
 *
 * @categoryId  category id
 *
 * @ref: http://opencart.i2cart.com/index.php?route=product/category&path=20&json
 */
+ (instancetype)getProudctsByCategoryId:(NSString*)categoryId{
    OCProductService* service = [[OCProductService alloc]init];
    
    NSString* route = @"product/category";
   // service.route = route;
    NSString* path = categoryId;
    NSString* json = @"1";
    service.parameters = OCNSDictionaryOfParametersBindings(route,path,json);
    
    return service;
}


/*
 * @function getProudct
 *
 * @productId  product id
 *
 * @ref: http://opencart.i2cart.com/index.php?route=product/product&product_id=42&json
 */
+ (instancetype)getProudct:(NSString*)productId{
    OCProductService* service = [[OCProductService alloc]init];
    
    NSString* route = @"product/product";
    NSString* product_id = productId;
  
    NSString* json = @"1";
    service.parameters = OCNSDictionaryOfParametersBindings(route,product_id,json);
    
    return service;
}



@end

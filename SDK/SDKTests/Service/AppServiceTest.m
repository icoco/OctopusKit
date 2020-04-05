//
//  AppServiceTest.m
//  SDKTests
//
//  Created by icoco on 05/04/2020.
//  Copyright © 2020 icoco. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BaseUnitTest.h"
#import "iXKitAppService.h"
#import "ServiceConfigurator.h"

@interface AppServiceTest  : BaseUnitTest

@end

@implementation AppServiceTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    [ServiceConfigurator setupWorkSpace];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testList {
    NSNumber* pageIndex = [NSNumber numberWithInteger:1];
    iXKitAppService* serivce = [iXKitAppService list:pageIndex];
    [serivce execute:^(id response) {
        [self.expection fulfill ];
    } failure:^(NSError *error) {
         [self.expection fulfill ];
    }];
    
    //@step
    [self waitForExpectationsWithTimeout:100 handler:^(NSError *error) {
        NSLog(@"%@",error);
    }];
}

- (NSString*)getCurrentDateTime{
    NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    return [dateFormatter stringFromDate:[NSDate date]];
}


- (void)testCreate {
    NSString* ymd = [self getCurrentDateTime];
    NSString* name = [NSString stringWithFormat:@"iOS Demo App-OC@%@",ymd];
    iXKitAppService* serivce = [iXKitAppService create:name];
    [serivce execute:^(id response) {
        [self.expection fulfill ];
    } failure:^(NSError *error) {
        [self.expection fulfill ];
    }];
    
    //@step
    [self waitForExpectationsWithTimeout:100 handler:^(NSError *error) {
        NSLog(@"%@",error);
    }];
}

@end

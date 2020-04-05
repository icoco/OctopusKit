//
//  BaseUnitTest.m
//  OctopusKit
//
//  Created by icoco7 on 8/19/15.
//  Copyright (c) 2015 RobinCheung. All rights reserved.
//

#import "BaseUnitTest.h"

@implementation BaseUnitTest
@synthesize expection;


- (void)setUp {
    [super setUp];
      
    self.expection = [self expectationWithDescription:[self description]];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


#pragma -mark
#pragma -mark count task
static int _completeTask = 0; static int _totalTask = 0;

- (void)initTask:(int)total{
    _totalTask = total;
    _completeTask = 0;
}

- (BOOL)hasCompleteAllTask{
    return _completeTask >= _totalTask;
}

- (void)completTask:(int)value{
    _completeTask = _completeTask + value;
}


@end

//
//  BaseUnitTest.h
//  OctopusKit
//
//  Created by icoco7 on 8/19/15.
//  Copyright (c) 2015 RobinCheung. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface BaseUnitTest : XCTestCase

@property(nonatomic)XCTestExpectation*  expection;

#pragma -mark
#pragma -mark count task
- (void)initTask:(int)total;

- (BOOL)hasCompleteAllTask;

- (void)completTask:(int)value;


@end

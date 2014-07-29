//
//  name2Tests.m
//  name2Tests
//
//  Created by Johnny Sparks on 7/28/14.
//  Copyright (c) 2014 therealreal. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LTViewController.h"


@interface name2Tests : XCTestCase
@property(nonatomic, strong) LTViewController *ltvc;
@end

@implementation name2Tests

- (void)setUp
{
    [super setUp];

    self.ltvc = [[LTViewController alloc] init];
    [self.ltvc viewDidLoad];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)test_ltViewControllerShouldHaveTwoNames
{
    XCTAssert(self.ltvc.names.count == 2, @"ltViewControllerShouldHaveTwoNames");
}

- (void)test_ltViewControllerFirstNameShouldBeKenan
{
    XCTAssert([self.ltvc.names.firstObject isEqual:@"kenan"], @"ltViewControllerFirstNameShouldBeKenan");
}

- (void)test_ltViewControllerSecondNameShouldBeJames
{
    XCTAssert([self.ltvc.names.firstObject isEqual:@"james"], @"test_ltViewControllerSecondNameShouldBeJames");
}


@end

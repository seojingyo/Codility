//
//  CodilityTests.m
//  CodilityTests
//
//  Created by 122316 on 2017. 5. 31..
//  Copyright © 2017년 seojingyo. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TapeEquilibrium.h"
@interface CodilityTests : XCTestCase

@end

@implementation CodilityTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    [TapeEquilibrium solution:[NSMutableArray arrayWithObjects:@"3",@"1",@"2",@"4",@"3", nil]];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end

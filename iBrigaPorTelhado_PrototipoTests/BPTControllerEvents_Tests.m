//
//  BPTControllerEvents_Tests.m
//  iBrigaPorTelhado_Prototipo
//
//  Created by Rodrigo P. Assunção on 25/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BPTControllerEvents.h"

@interface BPTControllerEvents_Tests : XCTestCase {
    BPTControllerEvents *testController;
}

@end

@implementation BPTControllerEvents_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    testController = [[BPTControllerEvents alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testIfTouchEventReturnNilValue {
    CGPoint testPoint = CGPointMake(-5, -5);
    NSString *returnValue =  [testController checkWhatIsTouched: testPoint];
    
    XCTAssertNil(returnValue, @"String de retorno deveria ser nula");
}

@end

//
//  BPTMapController_Tests.m
//  iBrigaPorTelhado_Prototipo
//
//  Created by Rodrigo P. Assunção on 25/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BPTControllerMap.h"

@interface BPTMapController_Tests : XCTestCase {
    BPTControllerMap *testController;
}

@end

@implementation BPTMapController_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    testController = [[BPTControllerMap alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testIfAddingCharactersToMapWork {
    BPTCharacter *testChar = [[BPTCharacter alloc] init];
    NSDictionary *auxcharsDic = [[NSDictionary alloc] initWithObjects:@[testChar, testChar, testChar] forKeys:@[@"00", @"01", @"02"]];
    NSMutableDictionary *charsDic = [[NSMutableDictionary alloc] initWithDictionary:auxcharsDic];
    
    [testController addPlayerCharactersToMap:charsDic];
    
    for (int i=0; i<3; i++) {
        BPTCharacter *testChar = [testController.map.charactersAndObjectsMatrix objectForKey:[NSString stringWithFormat:@"0%i", i]];
        XCTAssertNotNil(testChar, @"Char na pos 0%i não deveria ser nulo", i);
    }
}

@end

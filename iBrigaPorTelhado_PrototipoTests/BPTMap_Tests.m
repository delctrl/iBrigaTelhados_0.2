//
//  BPTMap_Tests.m
//  iBrigaPorTelhado_Prototipo
//
//  Created by Rodrigo P. Assunção on 25/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BPTMap.h"
#import "BPTCharacter.h"

@interface BPTMap_Tests : XCTestCase

@end

@implementation BPTMap_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testIfCharactersAreBeingAddedToTheMap
{
    BPTMap *testMap = [[BPTMap alloc] init];
    for (int i=0; i<5; i++) {
        BPTCharacter *testChar = [[BPTCharacter alloc] initWithTexture:@"hunter.png"];
        [testMap addCharacter:testChar AtPosition:CGPointMake(i, 0)];
    }
    
    XCTAssertEqual(testMap.charactersAndObjectsMatrix.count, 5, "Count do dicionario deve ser 5");
    for (int i=0;i<5;i++) {
        BPTCharacter *testChar = [testMap.charactersAndObjectsMatrix objectForKey:[NSString stringWithFormat:@"%i0", i]];
        XCTAssertNotNil(testChar, "Char não deveria ser nulo");
    }
}

@end

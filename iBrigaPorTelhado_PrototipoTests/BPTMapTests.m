//
//  BPTMapTests.m
//  iBrigaPorTelhado_Prototipo
//
//  Created by Rodrigo P. Assunção on 16/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BPTMap.h"

@interface BPTMapTests : XCTestCase{
    BPTMap *map;
}
@end

@implementation BPTMapTests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
    map = [[BPTMap alloc] init];
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testIfTilespriteMatrixIsBeingCreatedWithAllNodes{
    for (SKNode *node in [map tileSpritesMatrix]) {
        XCTAssertNil(node, @"Node dentro da tileSpritesMatrix não deveria ser nulo");
    }
}

- (void)testIfTileSpritesMatrixHaveTheRightAmountOfNode{
    XCTAssertEqual([map tileSpritesMatrix].count, 25, "tileSpriteMatrix.count = %i mas deveria ser 25", [map tileSpritesMatrix].count);
}

@end

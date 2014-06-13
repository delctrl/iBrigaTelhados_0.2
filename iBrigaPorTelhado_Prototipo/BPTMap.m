//
//  BPTMap.m
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEONARDO LEGRADY SALGADO GIGLIOTTI on 13/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//

#import "BPTMap.h"

@implementation BPTMap

- (id) init {
    self = [super init];
    if (self) {
        self.tileSpritesMatrix = [[NSMutableDictionary alloc] init];
        [self createTileNodes];
        self.charactersAndObjectsMatrix = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (void) createTileNodes {
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            BPTGameComponent *groundNode = [[BPTGameComponent alloc] init];
        }
    }
}
@end

//
//  BPTControllerCharacters.m
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEONARDO LEGRADY SALGADO GIGLIOTTI on 13/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//

#import "BPTControllerCharacters.h"

@implementation BPTControllerCharacters

@synthesize updateNeeded;

- (id) init {
    self = [super init];
    if (self) {
        [self setCharIsSelected:FALSE];
        self.updateNeeded = YES;
        
        [self createPlayerCharacters];
        [self createEnemyCharacters];
    }
    return self;
}

- (void) createPlayerCharacters {
}

- (void) createEnemyCharacters {
}
@end

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
    self.playerCharacters = [[NSMutableDictionary alloc] init];
    for (int i = 0; i < 3 ; i++){
        BPTCharacter *character = [[BPTCharacter alloc] initWithTexture:@"hunter.png"];
        [self.playerCharacters  setObject:character forKey: [NSString stringWithFormat:@"P%i", i ]];
        
    }
}

- (void) createEnemyCharacters {
}

@end

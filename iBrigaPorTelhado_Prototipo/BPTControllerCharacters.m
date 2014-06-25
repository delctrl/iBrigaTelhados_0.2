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
        self.updateNeeded = YES;
        
        /** Versão incompleta! **/
        [self createPlayerCharacters];
        [self createEnemyCharacters];
    }
    return self;
}

- (void) createPlayerCharacters {
    self.playerCharacters = [[NSMutableDictionary alloc] init];
    for (int i = 0; i < 3 ; i++){
        BPTCharacter *character = [[BPTCharacter alloc] initWithTexture:@"chocobo.png"];
        character.identifier = 1;
        int x = i;
        int y = i;
        [self.playerCharacters setObject:character forKey: [NSString stringWithFormat:@"%i%i", x, y]];
    }
}

- (void) createEnemyCharacters {
    
}

- (void) selectCharacter: (BPTCharacter *) character {
    self.characterSelected = character;
}

@end

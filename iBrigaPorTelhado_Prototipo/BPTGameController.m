//
//  BPTGameController.m
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEONARDO LEGRADY SALGADO GIGLIOTTI on 13/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//

#import "BPTGameController.h"

@implementation BPTGameController

- (id) init {
    self = [super init];
    if (self) {
        self.mapController = [[BPTControllerMap alloc] init];
        self.characterController = [[BPTControllerCharacters alloc] init];
        
        [self.mapController addPlayerCharactersToMap:self.characterController.playerCharacters];
        
        self.eventsController = [[BPTControllerEvents alloc] initWithMap: self.mapController.map];
        //Não esta sendo usado
//        self.player = [[BPTPlayer alloc] init];
//        self.vision = [[BPTVision alloc] init];
        
        /** Prototype only! **/
        [self initEnemy];
        
    }
    return self;
}

- (void) initEnemy {
    self.enemyCharacters = [[NSMutableArray alloc] init];
    /** Prototype only! | Add enemies here! **/
}

- (void) delegateEvent: (CGPoint) touch {
    NSDictionary *objectReceived = [self.eventsController receiveTouch: touch];
    
    if ([objectReceived objectForKey:@"0"] != nil) {
        NSLog(@"tile");
        [self tileReceived: [objectReceived objectForKey:@"0"]];
    }
    if ([objectReceived objectForKey:@"1"] != nil) {
        NSLog(@"char");
        [self characterReceived: [objectReceived objectForKey:@"1"]];
    }
}

- (void) characterReceived: (BPTCharacter *) character{
    if (self.characterController.characterSelected == nil) {
        [self.characterController selectCharacter: character];
    }
}

- (void) tileReceived: (SKSpriteNode *) tile{
    if (self.characterController.characterSelected != nil) {
        CGPoint characterPos = [self.mapController getComponentPosAtMatrix: self.characterController.characterSelected];
        CGPoint tilePos = [self.mapController getTilePosAtMatrix: tile];
        
        if ([self.mapController checkIfMovementIsPossibleForCharacter:characterPos ToTile:tilePos]) {
            NSLog(@"ok");
        }
    }
}
@end

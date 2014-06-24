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
    [self.eventsController receiveTouch: touch];
}
@end

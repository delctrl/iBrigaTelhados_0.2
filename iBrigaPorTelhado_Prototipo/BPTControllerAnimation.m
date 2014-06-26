//
//  BPTControllerAnimation.m
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEON SALGUEIRO VALIENGO BERNI on 26/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//

#import "BPTControllerAnimation.h"

@implementation BPTControllerAnimation
@synthesize updateNeeded;


- (void) animateRawMovementOfCharacter: (BPTCharacter *) character toTile: (SKSpriteNode *) tile {
    character.sprite.position = tile.position;
}

@end

//
//  BPTControllerAnimation.h
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEON SALGUEIRO VALIENGO BERNI on 26/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//
#import "BPTImportAllModels.h"
#import <SpriteKit/SpriteKit.h>
#import "BPTUpdateManagerProtocol.h"

enum {
    DEFAULT = 0,
};

@interface BPTControllerAnimation : SKSpriteNode <BPTUpdateManagerProtocol>

- (void) animateRawMovementOfCharacter: (BPTCharacter *) character toTile: (SKSpriteNode *) tile;
@end

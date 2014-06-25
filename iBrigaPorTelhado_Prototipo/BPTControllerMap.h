//
//  BPTControllerMap.h
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEONARDO LEGRADY SALGADO GIGLIOTTI on 13/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//
#import "BPTImportAllModels.h"
#import <Foundation/Foundation.h>
#import "BPTUpdateManagerProtocol.h"

@interface BPTControllerMap : NSObject <BPTUpdateManagerProtocol>

@property BPTMap *map;

- (id) init;
- (void) addPlayerCharactersToMap:(NSMutableDictionary*) characterList;

- (BOOL) checkIfMovementIsPossibleForCharacter: (CGPoint) characterPos ToTile: (CGPoint) tilePos;
- (BOOL) checkIfTileIsEmpty: (CGPoint) tilePos;

- (CGPoint) getTilePosAtMatrix: (SKSpriteNode *) tile;
- (CGPoint) getComponentPosAtMatrix: (BPTGameComponent *) component;
@end

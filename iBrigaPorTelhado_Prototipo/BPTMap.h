//
//  BPTMap.h
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEONARDO LEGRADY SALGADO GIGLIOTTI on 13/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//

#import "BPTGameComponent.h"
#import "BPTCharacter.h"
#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>

@interface BPTMap : NSObject

@property NSMutableDictionary *tileSpritesMatrix;
@property NSMutableDictionary *charactersAndObjectsMatrix;


- (void) addCharacter:(BPTGameComponent*) component AtPosition:(CGPoint) position;
@end

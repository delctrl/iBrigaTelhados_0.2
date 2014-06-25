//
//  BPTGameComponent.h
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEONARDO LEGRADY SALGADO GIGLIOTTI on 13/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//
#import "BPTComponentSpriteNode.h"
#import <SpriteKit/SpriteKit.h>
#import <Foundation/Foundation.h>

@interface BPTGameComponent : NSObject

@property int identifier;
@property BPTComponentSpriteNode *sprite;

@end

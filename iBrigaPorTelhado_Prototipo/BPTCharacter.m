//
//  BPTCharacter.m
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEONARDO LEGRADY SALGADO GIGLIOTTI on 13/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//

#import "BPTCharacter.h"

@implementation BPTCharacter

- (id) initWithTexture: (NSString *) textureName {
    self = [super init];
    if(self){
        self.sprite  = [[SKSpriteNode alloc ]initWithTexture:[SKTexture textureWithImageNamed:textureName]];
    }
    return self;
}

@end

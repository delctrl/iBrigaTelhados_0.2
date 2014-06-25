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
        self.sprite  = [[BPTComponentSpriteNode alloc ]initWithTexture:[SKTexture textureWithImageNamed:textureName]];
        self.sprite.texture.filteringMode = SKTextureFilteringNearest;
        [self useScaleAndAnchorForSprite: textureName];
    }
    return self;
}

- (void) useScaleAndAnchorForSprite: (NSString *) textureName {
    if ([textureName isEqualToString: @"chocobo.png"]) {
        [self.sprite setScale:0.3];
        self.sprite.anchorPoint = CGPointMake(0.5, 0.2);
    }
}
@end

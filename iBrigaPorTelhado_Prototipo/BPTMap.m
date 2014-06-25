//
//  BPTMap.m
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEONARDO LEGRADY SALGADO GIGLIOTTI on 13/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//

#import "BPTMap.h"

@implementation BPTMap

- (id) init {
    self = [super init];
    if (self) {
        [self createTileNodes];
        self.componentMatrix = [[NSMutableDictionary alloc] init];
    }
    return self;
}


- (void) createTileNodes {
    NSMutableArray *spriteArray = [[NSMutableArray alloc] init];
    NSMutableArray *posArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            SKSpriteNode *groundNode = [[SKSpriteNode alloc] initWithImageNamed:@"grass.png"];
            groundNode.size = CGSizeMake(140, 70);
            groundNode.position = [self getIsoPosition:CGPointMake(i*70, j*70)];
            [spriteArray addObject: groundNode];
            [posArray addObject: [NSString stringWithFormat: @"%i%i", i, j]];
        }
    }
    
    self.tileSpritesMatrix = [[NSMutableDictionary alloc] initWithObjects:spriteArray forKeys:posArray];
}

- (void) addCharacter:(BPTCharacter*) character AtPosition:(CGPoint) position{
    character.sprite.position = [self getIsoPosition:CGPointMake(position.x*70, position.y*70)];
    [self.componentMatrix setObject:character forKey:[NSString stringWithFormat:@"%.f%.f", position.x, position.y]];
}

- (CGPoint) getIsoPosition: (CGPoint) pt {
    
    CGPoint isoPos;
    isoPos.x = pt.x - pt.y;
    isoPos.y = (pt.x + pt.y)/2;
    
    isoPos.x += 370;
    isoPos.y += 370;
    
    return isoPos;
}
@end

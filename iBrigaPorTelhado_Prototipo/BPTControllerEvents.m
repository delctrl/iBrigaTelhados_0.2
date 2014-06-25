//
//  BPTControllerEvents.m
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEONARDO LEGRADY SALGADO GIGLIOTTI on 13/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//

#import "BPTControllerEvents.h"

@implementation BPTControllerEvents

- (id) initWithMap: (BPTMap *) map {
    self = [super init];
    if (self) {
        self.map = map;
    }
    return self;
}

- (NSDictionary *) receiveTouch: (CGPoint) touch {
    return [self checkWhatIsTouched: touch];
}

- (NSDictionary *) checkWhatIsTouched: (CGPoint) touch {
    NSMutableDictionary *characterDictionary = self.map.charactersAndObjectsMatrix;
    NSMutableDictionary *tilesDictionary = self.map.tileSpritesMatrix;
    SKSpriteNode *auxSprite;

    NSDictionary *dictionaryReturned;
    for (int x = 0; x < 5; x++) {
        for (int y = 0; y < 5; y++) {
            BPTCharacter *characterAux = [characterDictionary objectForKey: [NSString stringWithFormat: @"%i%i", x, y]];
            if (characterAux.identifier == 1) {
                auxSprite = characterAux.sprite;
                if (CGRectContainsPoint(auxSprite.frame, touch)) {
                    dictionaryReturned = [[NSDictionary alloc] initWithObjects:@[characterAux] forKeys:@[@"1"]];                  return dictionaryReturned;
                }
            }
            SKSpriteNode *tileAux = [tilesDictionary objectForKey: [NSString stringWithFormat: @"%i%i", x,y]];
            if (CGRectContainsPoint(tileAux.frame, touch)) {
                dictionaryReturned = [[NSDictionary alloc] initWithObjects:@[tileAux] forKeys:@[@"0"]];
                return dictionaryReturned;
            }
        }
    }
    
    return nil;
}

@end

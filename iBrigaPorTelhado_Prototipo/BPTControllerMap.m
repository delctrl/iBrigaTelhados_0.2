//
//  BPTControllerMap.m
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEONARDO LEGRADY SALGADO GIGLIOTTI on 13/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//

#import "BPTControllerMap.h"

@implementation BPTControllerMap

@synthesize updateNeeded;

- (id) init {
    self = [super init];
    if (self) {
        self.map = [[BPTMap alloc] init];
        self.updateNeeded = YES;
    }
    return self;
}

- (void) addPlayerCharactersToMap:(NSMutableDictionary*) characterList{
    for (int x = 0; x < characterList.count; x++) {
        for (int y = 0; y < characterList.count; y++) {
            if ([characterList objectForKey: [NSString stringWithFormat:@"%i%i", x, y]] != nil) {
                BPTCharacter *character = [characterList objectForKey:[NSString stringWithFormat:@"%i%i", x, y]];
                [self.map addCharacter:character AtPosition:CGPointMake(x, y)];
            }
        }
    }
    
    self.updateNeeded = YES;
}

- (CGPoint) getTilePosAtMatrix: (SKSpriteNode *) tile {
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            SKSpriteNode *auxTile = [self.map.tileSpritesMatrix objectForKey: [NSString stringWithFormat:@"%i%i", i, j]];
            if ([auxTile isEqual: tile]) {
                return CGPointMake(i, j);
            }
        }
    }
    return CGPointMake(-1, -1);
}

- (CGPoint) getComponentPosAtMatrix: (BPTGameComponent *) component {
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            BPTGameComponent *auxComponent = [self.map.componentMatrix objectForKey: [NSString stringWithFormat:@"%i%i", i, j]];
            if ([auxComponent isEqual: component]) {
                return CGPointMake(i, j);
            }
        }
    }
    return CGPointMake(-1, -1);
}

- (BOOL) checkIfMovementIsPossibleForCharacter: (CGPoint) characterPos ToTile: (CGPoint) tilePos {
    if ((tilePos.x == characterPos.x+1 && tilePos.y == characterPos.y) || (tilePos.x == characterPos.x-1 && tilePos.y == characterPos.y) ||
        (tilePos.x == characterPos.x && tilePos.y == characterPos.y+1) || (tilePos.x == characterPos.x && tilePos.y == characterPos.y-1)) {
        if ([self checkIfTileIsEmpty: tilePos]) {
            return YES;
        }
    }
    return NO;
}

- (BOOL) checkIfTileIsEmpty: (CGPoint) tilePos {
    BPTGameComponent *auxComponent = [self.map.componentMatrix objectForKey: [NSString stringWithFormat:@"%f%f", tilePos.x, tilePos.y]];
    if (auxComponent.identifier == 0 || auxComponent.identifier == 2) {
        return YES;
    }
    return NO;
}

- (void) moveComponentAtOrigin: (CGPoint) origin ToDestination: (CGPoint) destination {
    BPTGameComponent *componentAux = [self.map.componentMatrix objectForKey: [NSString stringWithFormat: @"%i%i", (int)origin.x, (int)origin.y]];
    [self.map.componentMatrix removeObjectForKey: [NSString stringWithFormat: @"%i%i", (int)origin.x, (int)origin.y]];
    [self.map.componentMatrix setObject: componentAux forKey: [NSString stringWithFormat: @"%i%i", (int)destination.x, (int)destination.y]];
}

@end

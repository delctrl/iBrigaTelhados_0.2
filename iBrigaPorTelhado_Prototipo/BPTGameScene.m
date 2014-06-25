//
//  MyScene.m
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEONARDO LEGRADY SALGADO GIGLIOTTI on 13/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//

#import "BPTGameScene.h"

@implementation BPTGameScene

- (id) initWithSize: (CGSize)size {
    if (self = [super initWithSize:size]) {
        gameController = [[BPTGameController alloc] init];
        [self createMap];
    }
    return self;
}

- (void) touchesBegan: (NSSet *)touches withEvent: (UIEvent *)event {
    if (touches.count != 1) {
        return;
    }
    UITouch *touchedPoint = [touches anyObject];
    
    [gameController delegateEvent: [touchedPoint locationInNode: self]];
}

- (void) createMap {
    NSMutableDictionary *tilesDictionary = gameController.mapController.map.tileSpritesMatrix;
    NSMutableDictionary *componentsDictionary = gameController.mapController.map.componentMatrix;
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            [self addChild: [tilesDictionary objectForKey: [NSString stringWithFormat:@"%i%i", i, j]]];
            BPTGameComponent *component = [componentsDictionary objectForKey:[NSString stringWithFormat:@"%i%i", i, j]];
            if (component) {
                [self addChild:component.sprite];
            }
        }
    }
    [gameController.mapController setUpdateNeeded:NO];
}

- (void) update: (CFTimeInterval)currentTime {
    if (gameController.mapController.updateNeeded) {
        [self updateMap];
    }
}

- (void) updateMap {
    
}

@end

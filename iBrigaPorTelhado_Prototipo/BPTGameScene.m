//
//  MyScene.m
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEONARDO LEGRADY SALGADO GIGLIOTTI on 13/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//

#import "BPTGameScene.h"

@implementation BPTGameScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        gameController = [[BPTGameController alloc] init];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    if (touches.count != 1) {
        return;
    }
}

-(void)update:(CFTimeInterval)currentTime {
    if ([BPTUpdateManager mapNeedUpdate]) {
        [self updateMap];
    }
}

- (void) updateMap {
    NSMutableDictionary *auxDictionary = gameController.map.tileSpritesMatrix;
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            [self addChild: [auxDictionary objectForKey: [NSString stringWithFormat:@"%i%i", i, j]]];
        }
    }
    [BPTUpdateManager setMapNeedUpdate:NO];
}
@end

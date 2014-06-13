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
    
}
@end

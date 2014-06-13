//
//  BPTVision.m
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEONARDO LEGRADY SALGADO GIGLIOTTI on 13/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//

#import "BPTVision.h"

@implementation BPTVision

- (id) init {
    self = [super init];
    if (self) {
        self.visionMatrix = [[NSMutableDictionary alloc] init];
    }
    return self;
}

@end

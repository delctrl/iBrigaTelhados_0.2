//
//  BPTControllerVision.m
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEONARDO LEGRADY SALGADO GIGLIOTTI on 13/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//

#import "BPTControllerVision.h"

@implementation BPTControllerVision

@synthesize updateNeeded;

- (id) init {
    self = [super init];
    if (self) {
        self.updateNeeded = YES;
    }
    return self;
}
@end

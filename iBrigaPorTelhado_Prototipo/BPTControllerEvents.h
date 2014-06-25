//
//  BPTControllerEvents.h
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEONARDO LEGRADY SALGADO GIGLIOTTI on 13/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//
#import "BPTImportAllModels.h"
#import <Foundation/Foundation.h>

@interface BPTControllerEvents : NSObject

@property BPTMap *map;

- (id) initWithMap: (BPTMap *) map;
- (NSDictionary *) receiveTouch: (CGPoint) touch;
@end


//
//  BPTGameController.h
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEONARDO LEGRADY SALGADO GIGLIOTTI on 13/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//
#import "BPTImportControllers.h"
#import "BPTImportAllModels.h"
#import "BPTUpdateManager.h"
#import <Foundation/Foundation.h>

@interface BPTGameController : NSObject

@property BPTMap *map;
@property BPTPlayer *player;
@property BPTVision *vision;
@property NSMutableArray *enemyCharacters;

@end

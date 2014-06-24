
//
//  BPTGameController.h
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEONARDO LEGRADY SALGADO GIGLIOTTI on 13/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//
#import "BPTImportAllControllers.h"
#import "BPTImportAllModels.h"
#import <Foundation/Foundation.h>

@interface BPTGameController : NSObject

@property BPTPlayer *player;
@property BPTVision *vision;
@property NSMutableArray *enemyCharacters;

@property BPTControllerCharacters *characterController;
@property BPTControllerVision *visionController;
@property BPTControllerMap *mapController;
@property BPTControllerEvents *eventsController;


- (void) delegateEvent: (CGPoint) touch;
@end

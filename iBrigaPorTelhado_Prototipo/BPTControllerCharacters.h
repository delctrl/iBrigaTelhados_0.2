//
//  BPTControllerCharacters.h
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEONARDO LEGRADY SALGADO GIGLIOTTI on 13/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BPTUpdateManagerProtocol.h"

@interface BPTControllerCharacters : NSObject <BPTUpdateManagerProtocol>

@property bool charIsSelected;

@property NSMutableDictionary *playerCharacters;
@property NSMutableDictionary *enemyCharacters;

@end

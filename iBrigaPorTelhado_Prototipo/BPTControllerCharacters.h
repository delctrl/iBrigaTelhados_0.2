//
//  BPTControllerCharacters.h
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEONARDO LEGRADY SALGADO GIGLIOTTI on 13/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BPTUpdateManagerProtocol.h"
#import "BPTCharacter.h"

@interface BPTControllerCharacters : NSObject <BPTUpdateManagerProtocol>

@property BPTCharacter *characterSelected;

@property NSMutableDictionary *playerCharacters;
@property NSMutableDictionary *enemyCharacters;


- (void) selectCharacter: (BPTCharacter *) character;
@end

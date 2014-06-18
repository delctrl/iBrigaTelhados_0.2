//
//  BPTControllerMap.m
//  iBrigaPorTelhado_Prototipo
//
//  Created by LEONARDO LEGRADY SALGADO GIGLIOTTI on 13/06/14.
//  Copyright (c) 2014 LEONARDO LEGRADY SALGADO GIGLIOTTI. All rights reserved.
//

#import "BPTControllerMap.h"

@implementation BPTControllerMap

@synthesize updateNeeded;

- (id) init {
    self = [super init];
    if (self) {
        self.map = [[BPTMap alloc] init];
        self.updateNeeded = YES;
    }
    return self;
}

- (void) addPlayerCharacterToMap:(NSMutableDictionary*) characterList{
    int x, y;
    x = y = 0;
    for (;x<characterList.count;x++) {
        BPTCharacter *character = [characterList objectForKey:[NSString stringWithFormat:@"P%i", x]];
        [self.map addCharacter:character AtPosition:CGPointMake(x, y)];
    }
    self.updateNeeded = YES;
}
@end

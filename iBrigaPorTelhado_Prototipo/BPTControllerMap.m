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

- (void) addPlayerCharactersToMap:(NSMutableDictionary*) characterList{
    for (int x = 0; x < characterList.count; x++) {
        for (int y = 0; y < characterList.count; y++) {
            if ([characterList objectForKey: [NSString stringWithFormat:@"%i%i", x, y]] != nil) {
                BPTCharacter *character = [characterList objectForKey:[NSString stringWithFormat:@"%i%i", x, y]];
                [self.map addCharacter:character AtPosition:CGPointMake(x, y)];
            }
        }
    }
    
    self.updateNeeded = YES;
}
@end

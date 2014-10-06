//
//  Deck.h
//  matchimo
//
//  Created by lihaoquan on 14-10-6.
//  Copyright (c) 2014年 steve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL) atTop;
- (void)addCard:(Card *)card;

-(Card *)drawRandomCard;

@end

//
//  PlayingCardDeck.m
//  matchimo
//
//  Created by lihaoquan on 14-10-6.
//  Copyright (c) 2014年 steve. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

//初始化生成牌
- (instancetype)init
{
    self = [super init];
    if (self) {
        //....
        for (NSString *suit in [PlayingCard validSuits]) {
            
            for(NSUInteger rank=1; rank<=[PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
        
    }
    return self;
}

@end

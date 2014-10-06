//
//  Deck.m
//  matchimo
//
//  Created by lihaoquan on 14-10-6.
//  Copyright (c) 2014年 steve. All rights reserved.
//

#import "Deck.h"

@interface Deck()

@property (strong, nonatomic) NSMutableArray *cards; // of Card

@end


@implementation Deck


- (NSMutableArray *) cards
{
    if(!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}


//是否在最上层增加牌
- (void)addCard:(Card *)card atTop:(BOOL) atTop
{
    if(atTop)
    {
        [self.cards insertObject:card atIndex:0];//在特定位置插入
    }
    else
    {
        [self.cards addObject:card];//FIFO
        
    }
}


//增加牌
- (void)addCard:(Card *)card
{
    [self addCard:card atTop:NO];//采用可变数组的默认插入方式
}


//随机造牌
-(Card *)drawRandomCard
{
    Card * randomCard = nil;
    
    if ([self.cards count]) {
        unsigned index = arc4random()% [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}

@end

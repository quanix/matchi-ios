//
//  CardMatchingGame.h
//  matchimo
//
//  Created by lihaoquan on 14-10-6.
//  Copyright (c) 2014年 steve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject


//初始化设计
- (instancetype)initWithCardCount:(NSInteger)count
                        usingDeck:(Deck *)deck;

- (void)chooseCardAtIndex:(NSUInteger)index;

- (Card *)cardAtIndex:(NSUInteger)index;

- (void)drawNewCard;

- (NSArray *)findCombination;

@property (nonatomic,readonly)NSInteger score;//分数
@property (nonatomic)NSUInteger maxMatchingCards;//最大匹配卡数
@property (nonatomic, readonly)NSArray *lastChosenCards;//最近选择的卡
@property (nonatomic, readonly)NSInteger lastScore;//最近分数

@property (nonatomic,readonly)NSInteger numberOfDealtCards;

@property (nonatomic,readonly) BOOL deckIsEmpty;//是否空桌

@property (nonatomic)int matchBonus;
@property (nonatomic)int mismatchPenalty;
@property (nonatomic)int flipCost;


@end

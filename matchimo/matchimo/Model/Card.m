//
//  Card.m
//  matchimo
//
//  Created by lihaoquan on 14-10-6.
//  Copyright (c) 2014年 steve. All rights reserved.
//

#import "Card.h"

@implementation Card


//默认玩匹配2张卡
-(NSInteger) numberOfMatchingCards
{
    if(!_numberOfMatchingCards) _numberOfMatchingCards=2;
    
    return _numberOfMatchingCards;
}


//匹配其它卡片获取得分(如果匹配上了,得一分)
-(int)match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards)
    {
        if([card.contents isEqualToString:self.contents])
        {
            score = 1;
        }
    }
    return score;
}

@end

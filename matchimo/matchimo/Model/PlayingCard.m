//
//  PlayingCard.m
//  matchimo
//
//  Created by lihaoquan on 14-10-6.
//  Copyright (c) 2014年 steve. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;//当前花色


//检验花色
+ (NSArray *)validSuits
{
    return @[@"♥️", @"♦️", @"♠️", @"♣️"];
}


//牌面
+ (NSArray *)rankStrings
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}


//最大牌面
+ (NSUInteger)maxRank
{
    return [[self rankStrings] count] - 1;
}

//当前牌的内容
-(NSString *) contents
{
    return [[PlayingCard rankStrings][self.rank] stringByAppendingString:self.suit];
}

- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit
{
    return _suit ?_suit:@"?";
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

//重写match方法
- (int)match:(NSArray *)otherCards
{
    int score = 0;
    NSUInteger numOtherCards = [otherCards count];
    if (numOtherCards)
    {
        for(Card *card in otherCards)
        {
            if([card isKindOfClass:[PlayingCard class]])
            {
                PlayingCard *otherCard = (PlayingCard *)card;
                if ([self.suit isEqualToString:otherCard.suit])
                {
                    score += 1;//猜中花色得一分
                }else if (self.rank == otherCard.rank)
                {
                    score += 4;//猜中牌面得4分
                }
            }
        }
    }
    if (numOtherCards > 1)
    {
        //采用递归的方式处理剩余的牌
        score += [[otherCards firstObject] match:[otherCards subarrayWithRange:NSMakeRange(1, numOtherCards - 1)]];
    }
    return score;
}

@end

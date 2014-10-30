//
//  Card.h
//  matchimo
//
//  Created by lihaoquan on 14-10-6.
//  Copyright (c) 2014年 steve. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong,nonatomic) NSString *contents;
@property (nonatomic,getter=isChosen) BOOL chosen;
@property (nonatomic,getter=isMatched) BOOL matched;

//默认玩匹配2张卡
@property (nonatomic) NSInteger numberOfMatchingCards;

//匹配其它卡片
-(int)match:(NSArray *)otherCards;

@end

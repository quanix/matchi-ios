//
//  GameResult.h
//  matchimo
//
//  Created by lihaoquan on 14-10-6.
//  Copyright (c) 2014年 steve. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameResult : NSObject

+(NSArray *) allGameResults;

@property (readonly ,nonatomic) NSDate *start;
@property (readonly, nonatomic) NSDate *end;

@property (readonly,nonatomic) NSTimeInterval duration;
@property (nonatomic) int score;
@property(strong,nonatomic) NSString *gameType;


//-------- 比较函数-----------

- (NSComparisonResult)compareScore:(GameResult *)result;
- (NSComparisonResult)compareDuration:(GameResult *)result;
- (NSComparisonResult)compareDate:(GameResult *)result;

@end

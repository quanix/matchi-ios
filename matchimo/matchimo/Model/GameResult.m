//
//  GameResult.m
//  matchimo
//
//  Created by lihaoquan on 14-10-6.
//  Copyright (c) 2014年 steve. All rights reserved.
//

#import "GameResult.h"

@implementation GameResult

#define ALL_RESULTS_KEY @"GameResult_All"
#define START_KEY @"StartDate"
#define END_KEY @"EndDate"
#define SCORE_KEY @"Score"
#define GAME_KEY @"Game"


- (NSTimeInterval)duration
{
    return [self.end timeIntervalSinceDate:self.start];
}

-(void) setScore:(int)score
{
    
}

-(void)synchronize
{
    
}


//初始化函数
-(id) init
{
    self = [super init];
    if (self) {
        _start = [NSDate date];
        _end = _start;
    }
    return self;
}

@end

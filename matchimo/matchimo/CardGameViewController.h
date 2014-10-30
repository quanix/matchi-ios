//
//  CardGameViewController.h
//  matchimo
//
//  Created by lihaoquan on 14/10/30.
//  Copyright (c) 2014年 steve. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Deck.h"
#import "Card.h"

@interface CardGameViewController : UIViewController


// 给子类使用的方法
- (Deck *) createDeck; //抽象方法
- (UIView *)createViewForCard:(Card *)card;
- (void)updateView:(UIView *)view forCard:(Card *)card;


- (void)updateUI;


@property (strong, nonatomic) NSString *gameType;
@property (nonatomic)NSUInteger numberOfStartingCards;
@property (nonatomic)CGSize maxCardSize;
@property (nonatomic)BOOL removeMatchingCards;




@end

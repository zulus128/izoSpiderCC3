//
//  Hero.h
//  izoSpider
//
//  Created by Zul on 7/28/13.
//  Copyright (c) 2013 Zul. All rights reserved.
//

#import "cocos2d.h"
#import "Common.h"

#define ANIM_DELAY 0.2f
//#define SPRITE_SIZE 117
#define SPIDER_CALM_MIN_SPRITE_NUMBER 1
#define SPIDER_CALM_MAX_SPRITE_NUMBER 11
#define SPIDER_WALK_MIN_SPRITE_NUMBER 12
#define SPIDER_WALK_MAX_SPRITE_NUMBER 30
#define SPIDER_WAVE_MIN_SPRITE_NUMBER 31
#define SPIDER_WAVE_MAX_SPRITE_NUMBER 43

@interface Hero : CCNode {
    
    int direction;
    int state;
    CCSprite* me;
}

- (void)popStepAndAnimate;
- (void) go;

@property (nonatomic, strong) NSMutableArray *shortestPath;
@property (nonatomic, strong) CCAction *actionCalmS;
@property (nonatomic, strong) CCAction *actionCalmW;
@property (nonatomic, strong) CCAction *actionCalmN;
@property (nonatomic, strong) CCAction *actionCalmE;
@property (nonatomic, strong) CCAction *actionWalkS;
@property (nonatomic, strong) CCAction *actionWalkW;
@property (nonatomic, strong) CCAction *actionWalkN;
@property (nonatomic, strong) CCAction *actionWalkE;
@property (nonatomic, strong) CCAction *actionWaveS;
@property (nonatomic, strong) CCAction *actionWaveW;
@property (nonatomic, strong) CCAction *actionWaveN;
@property (nonatomic, strong) CCAction *actionWaveE;

@end

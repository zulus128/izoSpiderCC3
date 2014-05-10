//
//  Hero.m
//  izoSpider
//
//  Created by Zul on 7/28/13.
//  Copyright (c) 2013 Zul. All rights reserved.
//

#import "Hero.h"
#import "ShortestPathStep.h"
#import "CCAnimation.h"

@implementation Hero


-(id) init {
    
	if( (self=[super init]) ) {
		
        // --- CALM
        [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"spider_calm.plist"];
        
        NSMutableArray *animationFrames = [NSMutableArray array];
        for(int i = SPIDER_CALM_MIN_SPRITE_NUMBER; i <= SPIDER_CALM_MAX_SPRITE_NUMBER; ++i)
        {
            CCSpriteFrame *spriteFrame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName: [NSString stringWithFormat:@"spider1 (%d).png", i]];
            [animationFrames addObject:spriteFrame];
        }
        CCAnimation *animationCalmS = [CCAnimation animationWithSpriteFrames: animationFrames delay:ANIM_DELAY];
        CCActionAnimate* aCalmS = [CCActionAnimate actionWithAnimation:animationCalmS];
        self.actionCalmS = [CCActionRepeatForever actionWithAction:aCalmS];
        
        animationFrames = [NSMutableArray array];
        for(int i = SPIDER_CALM_MIN_SPRITE_NUMBER; i <= SPIDER_CALM_MAX_SPRITE_NUMBER; ++i)
        {
            CCSpriteFrame *spriteFrame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName: [NSString stringWithFormat:@"spider2 (%d).png", i]];
            [animationFrames addObject:spriteFrame];
        }
        CCAnimation *animationCalmW = [CCAnimation animationWithSpriteFrames: animationFrames delay:ANIM_DELAY];
        CCActionAnimate* aCalmW = [CCActionAnimate actionWithAnimation:animationCalmW];
        self.actionCalmW = [CCActionRepeatForever actionWithAction:aCalmW];
        
        animationFrames = [NSMutableArray array];
        for(int i = SPIDER_CALM_MIN_SPRITE_NUMBER; i <= SPIDER_CALM_MAX_SPRITE_NUMBER; ++i)
        {
            CCSpriteFrame *spriteFrame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName: [NSString stringWithFormat:@"spider3 (%d).png", i]];
            [animationFrames addObject:spriteFrame];
        }
        CCAnimation *animationCalmN = [CCAnimation animationWithSpriteFrames: animationFrames delay:ANIM_DELAY];
        CCActionAnimate* aCalmN = [CCActionAnimate actionWithAnimation:animationCalmN];
        self.actionCalmN = [CCActionRepeatForever actionWithAction:aCalmN];
        
        animationFrames = [NSMutableArray array];
        for(int i = SPIDER_CALM_MIN_SPRITE_NUMBER; i <= SPIDER_CALM_MAX_SPRITE_NUMBER; ++i)
        {
            CCSpriteFrame *spriteFrame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName: [NSString stringWithFormat:@"spider4 (%d).png", i]];
            [animationFrames addObject:spriteFrame];
        }
        CCAnimation *animationCalmE = [CCAnimation animationWithSpriteFrames: animationFrames delay:ANIM_DELAY];
        CCActionAnimate* aCalmE = [CCActionAnimate actionWithAnimation:animationCalmE];
        self.actionCalmE = [CCActionRepeatForever actionWithAction:aCalmE];
        
        // --- WALK
        [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"spider_walk_1.plist"];
        [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"spider_walk_2.plist"];
        
        animationFrames = [NSMutableArray array];
        for(int i = SPIDER_WALK_MIN_SPRITE_NUMBER; i <= SPIDER_WALK_MAX_SPRITE_NUMBER; ++i)
        {
            CCSpriteFrame *spriteFrame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName: [NSString stringWithFormat:@"spider1 (%d).png", i]];
            [animationFrames addObject:spriteFrame];
        }
        CCAnimation *animationWalkS = [CCAnimation animationWithSpriteFrames: animationFrames delay:ANIM_DELAY];
        CCActionAnimate* aWalkS = [CCActionAnimate actionWithAnimation:animationWalkS];
        self.actionWalkS = [CCActionRepeatForever actionWithAction:aWalkS];
        animationFrames = [NSMutableArray array];
        for(int i = SPIDER_WALK_MIN_SPRITE_NUMBER; i <= SPIDER_WALK_MAX_SPRITE_NUMBER; ++i)
        {
            CCSpriteFrame *spriteFrame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName: [NSString stringWithFormat:@"spider2 (%d).png", i]];
            [animationFrames addObject:spriteFrame];
        }
        CCAnimation *animationWalkW = [CCAnimation animationWithSpriteFrames: animationFrames delay:ANIM_DELAY];
        CCActionAnimate* aWalkW = [CCActionAnimate actionWithAnimation:animationWalkW];
        self.actionWalkW = [CCActionRepeatForever actionWithAction:aWalkW];
        animationFrames = [NSMutableArray array];
        for(int i = SPIDER_WALK_MIN_SPRITE_NUMBER; i <= SPIDER_WALK_MAX_SPRITE_NUMBER; ++i)
        {
            CCSpriteFrame *spriteFrame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName: [NSString stringWithFormat:@"spider3 (%d).png", i]];
            [animationFrames addObject:spriteFrame];
        }
        CCAnimation *animationWalkN = [CCAnimation animationWithSpriteFrames: animationFrames delay:ANIM_DELAY];
        CCActionAnimate* aWalkN = [CCActionAnimate actionWithAnimation:animationWalkN];
        self.actionWalkN = [CCActionRepeatForever actionWithAction:aWalkN];
        animationFrames = [NSMutableArray array];
        for(int i = SPIDER_WALK_MIN_SPRITE_NUMBER; i <= SPIDER_WALK_MAX_SPRITE_NUMBER; ++i)
        {
            CCSpriteFrame *spriteFrame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName: [NSString stringWithFormat:@"spider4 (%d).png", i]];
            [animationFrames addObject:spriteFrame];
        }
        CCAnimation *animationWalkE = [CCAnimation animationWithSpriteFrames: animationFrames delay:ANIM_DELAY];
        CCActionAnimate* aWalkE = [CCActionAnimate actionWithAnimation:animationWalkE];
        self.actionWalkE = [CCActionRepeatForever actionWithAction:aWalkE];

        // --- WAVE
        [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"spider_wave.plist"];
        
        animationFrames = [NSMutableArray array];
        for(int i = SPIDER_WAVE_MIN_SPRITE_NUMBER; i <= SPIDER_WAVE_MAX_SPRITE_NUMBER; ++i)
        {
            CCSpriteFrame *spriteFrame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName: [NSString stringWithFormat:@"spider1 (%d).png", i]];
            [animationFrames addObject:spriteFrame];
        }
        CCAnimation *animationWaveS = [CCAnimation animationWithSpriteFrames: animationFrames delay:ANIM_DELAY];
        CCActionAnimate* aWaveS = [CCActionAnimate actionWithAnimation:animationWaveS];
        self.actionWaveS = [CCActionRepeatForever actionWithAction:aWaveS];
        animationFrames = [NSMutableArray array];
        for(int i = SPIDER_WAVE_MIN_SPRITE_NUMBER; i <= SPIDER_WAVE_MAX_SPRITE_NUMBER; ++i)
        {
            CCSpriteFrame *spriteFrame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName: [NSString stringWithFormat:@"spider2 (%d).png", i]];
            [animationFrames addObject:spriteFrame];
        }
        CCAnimation *animationWaveW = [CCAnimation animationWithSpriteFrames: animationFrames delay:ANIM_DELAY];
        CCActionAnimate* aWaveW = [CCActionAnimate actionWithAnimation:animationWaveW];
        self.actionWaveW = [CCActionRepeatForever actionWithAction:aWaveW];
        animationFrames = [NSMutableArray array];
        for(int i = SPIDER_WAVE_MIN_SPRITE_NUMBER; i <= SPIDER_WAVE_MAX_SPRITE_NUMBER; ++i)
        {
            CCSpriteFrame *spriteFrame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName: [NSString stringWithFormat:@"spider3 (%d).png", i]];
            [animationFrames addObject:spriteFrame];
        }
        CCAnimation *animationWaveN = [CCAnimation animationWithSpriteFrames: animationFrames delay:ANIM_DELAY];
        CCActionAnimate* aWaveN = [CCActionAnimate actionWithAnimation:animationWaveN];
        self.actionWaveN = [CCActionRepeatForever actionWithAction:aWaveN];
        animationFrames = [NSMutableArray array];
        for(int i = SPIDER_WAVE_MIN_SPRITE_NUMBER; i <= SPIDER_WAVE_MAX_SPRITE_NUMBER; ++i)
        {
            CCSpriteFrame *spriteFrame = [[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName: [NSString stringWithFormat:@"spider4 (%d).png", i]];
            [animationFrames addObject:spriteFrame];
        }
        CCAnimation *animationWaveE = [CCAnimation animationWithSpriteFrames: animationFrames delay:ANIM_DELAY];
        CCActionAnimate* aWaveE = [CCActionAnimate actionWithAnimation:animationWaveE];
        self.actionWaveE = [CCActionRepeatForever actionWithAction:aWaveE];
        
        me = [CCSprite spriteWithImageNamed:@"spider1 (1).png"];
        me.position = ccp(0,0);
        [self addChild:me];
        
        direction = kDirS;
        state = kSpiderStateCalm;
        
        [self refreshAnimation];
        
	}
	return self;
}

- (void) refreshAnimation
{
    [me stopAllActions];
    
    state = kSpiderStateCalm;
    
    if(self.shortestPath != nil)
    {
        state = kSpiderStateWalk;
    }
    
    CCAction* act;
    switch (state) {
        case kSpiderStateCalm:
            switch (direction) {
                case kDirS:
                    act = self.actionCalmS;
                    break;
                case kDirW:
                    act = self.actionCalmW;
                    break;
                case kDirN:
                    act = self.actionCalmN;
                    break;
                case kDirE:
                    act = self.actionCalmE;
                    break;
            }
            break;
            
        case kSpiderStateWalk:
            switch (direction) {
                case kDirS:
                    act = self.actionWalkS;
                    break;
                case kDirW:
                    act = self.actionWalkW;
                    break;
                case kDirN:
                    act = self.actionWalkN;
                    break;
                case kDirE:
                    act = self.actionWalkE;
                    break;
            }
            break;
            
        case kSpiderStateWave:
            switch (direction) {
                case kDirS:
                    act = self.actionWaveS;
                    break;
                case kDirW:
                    act = self.actionWaveW;
                    break;
                case kDirN:
                    act = self.actionWaveN;
                    break;
                case kDirE:
                    act = self.actionWaveE;
                    break;
            }
            break;
    }
    
    [me runAction:act];
}
//
//- (void) go {
//
//    [self refreshAnimation];
//    [self popStepAndAnimate];
//}
//
//- (void)popStepAndAnimate {
//    
//	// Check if there remains path steps to go through
//	if ([self.shortestPath count] == 0) {
//		
//        self.shortestPath = nil;
//
//        [self refreshAnimation];
//
//		return;
//	}
//    
//	// Get the next step to move to
//	ShortestPathStep *s = [self.shortestPath objectAtIndex:0];
//    
//    CGPoint curr = [[Common instance] tileCoordForPosition:self.position];
//    if(s.position.x > curr.x)
//        direction = kDirE;
//    if(s.position.x < curr.x)
//        direction = kDirW;
//    if(s.position.y > curr.y)
//        direction = kDirS;
//    if(s.position.y < curr.y)
//        direction = kDirN;
//    [self refreshAnimation];
//
////    NSLog(@"direction = %d", direction);
////    NSLog(@"curr = %f, %f", curr.x, curr.y);
//    
//	// Prepare the action and the callback
//	id moveAction = [CCMoveTo actionWithDuration:0.8f position:[[Common instance] positionForTileCoord:s.position]];
//	id moveCallback = [CCCallFunc actionWithTarget:self selector:@selector(popStepAndAnimate)]; // set the method itself as the callback
//    
//	// Remove the step
//	[self.shortestPath removeObjectAtIndex:0];
//    
//	// Play actions
//	[self runAction:[CCSequence actions:moveAction, moveCallback, nil]];
//}

@end

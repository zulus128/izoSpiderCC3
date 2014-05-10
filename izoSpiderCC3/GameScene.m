//
//  GameScene.m
//  izoSpiderCC3
//
//  Created by вадим on 5/9/14.
//  Copyright 2014 vkassin. All rights reserved.
//

#import "GameScene.h"
#import "Common.h"

@implementation GameScene

+ (GameScene *)scene
{
	return [[self alloc] init];
}

// -----------------------------------------------------------------------

- (id)init
{
    // Apple recommend assigning self with supers return value
    self = [super init];
    if (!self) return(nil);

//    [Common instance].tileMap.position = ccp(0, 0);
    [Common instance].tileMap.position = ccp(-411, -424);
//    [Common instance].tileMap.position = ccp(-1211, -1012);

    [Common instance].tileMap.scale = 0.5f;
    [self addChild:[Common instance].tileMap z:0];
    
	return self;
}

@end

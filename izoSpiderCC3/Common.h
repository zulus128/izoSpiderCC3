//
//  Common.h
//  izoSpider
//
//  Created by Zul on 7/24/13.
//  Copyright (c) 2013 Zul. All rights reserved.
//

//http://www.raywenderlich.com/4970/how-to-implement-a-pathfinding-with-cocos2d-tutorial

#import "cocos2d.h"

#define BACK_LAYER1 @"web"
#define BACK_LAYER2 @"grass"
#define FRONT_LAYER1 @"bushes"
#define FRONT_LAYER2 @"trees"
#define FRONT_LAYER3 @"fence1"
#define FRONT_LAYER4 @"fence2"
#define FRONT_LAYER5 @"fence3"
#define FRONT_LAYER6 @"fence4"

#define TILE_NET_GID 10

enum {
    
    kDirW,
    kDirN,
    kDirE,
    kDirS
};

@class Hero;

@interface Common : NSObject

+ (Common*) instance;

- (CGPoint) ort2iso:(CGPoint) pos;
- (CGPoint) iso2ort:(CGPoint) pos;
- (CGPoint)tileCoordForPosition:(CGPoint)position;
- (CGPoint)positionForTileCoord:(CGPoint)tile;
- (int) tileIdforTileCoord:(CGPoint)tile;

- (BOOL)isWallAtTileCoord:(CGPoint)tileCoord;
- (BOOL)isValidTileCoord:(CGPoint)tileCoord;

- (void) setViewpointCenterToHero;

@property (nonatomic, strong) CCTiledMap *tileMap;
@property (nonatomic, strong) Hero* hero;


- (NSArray *)walkableAdjacentTilesCoordForTileCoord:(CGPoint)tileCoord;

@end

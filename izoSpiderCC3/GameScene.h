//
//  GameScene.h
//  izoSpiderCC3
//
//  Created by вадим on 5/9/14.
//  Copyright 2014 vkassin. All rights reserved.
//

#import "cocos2d.h"
#import "cocos2d-ui.h"

// -----------------------------------------------------------------------

/**
 *  The intro scene
 *  Note, that scenes should now be based on CCScene, and not CCLayer, as previous versions
 *  Main usage for CCLayer now, is to make colored backgrounds (rectangles)
 *
 */
@interface GameScene : CCScene

// -----------------------------------------------------------------------

+ (GameScene *)scene;
- (id)init;

@end

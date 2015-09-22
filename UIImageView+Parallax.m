//
//  UIImageView+Parallax.m
//  Oscar Dominguez
//
//  Created by Oscar Domínguez on 31/03/14.
//  Copyright (c) 2014 Oscar Dominguez. All rights reserved.
//

#import "UIImageView+Parallax.h"

@implementation UIImageView (Parallax)
-(void)addParallax{
    
    UIInterpolatingMotionEffect *verticalMotionEffect =
    [[UIInterpolatingMotionEffect alloc]
     initWithKeyPath:@"center.y"
     type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    verticalMotionEffect.minimumRelativeValue = @(-10);
    verticalMotionEffect.maximumRelativeValue = @(10);
    
    UIInterpolatingMotionEffect *horizontalMotionEffect =
    [[UIInterpolatingMotionEffect alloc]
     initWithKeyPath:@"center.x"
     type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    horizontalMotionEffect.minimumRelativeValue = @(-10);
    horizontalMotionEffect.maximumRelativeValue = @(10);
    
    UIMotionEffectGroup *group = [UIMotionEffectGroup new];
    group.motionEffects = @[horizontalMotionEffect, verticalMotionEffect];
    [self addMotionEffect:group];
    [self removeMotionEffect:[self.motionEffects objectAtIndex:0]];

}
@end

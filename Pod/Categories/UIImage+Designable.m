//
//  UIImage+Designable.m
//  SpikeAutolayoutFun
//
//  Created by Alexander Yianni on 10/11/2015.
//  Copyright © 2015 Yianni Software. All rights reserved.
//
#import "UIImage+Designable.h"
#import "NSBundle+Designable.h"
@implementation UIImage (Designable)
+(instancetype) imageNamedDesignable:(NSString *) imageName {
#if !TARGET_INTERFACE_BUILDER
    return [UIImage imageNamed:imageName];
#else
    return [UIImage imageNamed:imageName inBundle:[NSBundle designableBundle] compatibleWithTraitCollection:nil];
#endif
}

@end

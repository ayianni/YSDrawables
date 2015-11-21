//
//  UIImage+Mask.h
//  Reunion
//
//  Created by Alexander Yianni on 25/04/13.
//  Copyright (c) 2013 Yianni Software Pty Ltd. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@interface UIImage(Mask)
- (UIImage*) maskImageWithMask:(UIImage *)maskImage;
@end
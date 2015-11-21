//
//  UIImage+Mask.m
//  Reunion
//
//  Created by Alexander Yianni on 25/04/13.
//  Copyright (c) 2013 Yianni Software Pty Ltd. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@implementation UIImage(Mask)

//http://iosdevelopertips.com/cocoa/how-to-mask-an-image.html
- (UIImage*) maskImageWithMask:(UIImage *)maskImage {
    
	CGImageRef maskRef = maskImage.CGImage;
    
	CGImageRef mask = CGImageMaskCreate(CGImageGetWidth(maskRef),
                                        CGImageGetHeight(maskRef),
                                        CGImageGetBitsPerComponent(maskRef),
                                        CGImageGetBitsPerPixel(maskRef),
                                        CGImageGetBytesPerRow(maskRef),
                                        CGImageGetDataProvider(maskRef), NULL, false);
    
	CGImageRef masked = CGImageCreateWithMask([self CGImage], mask);
    // release the CGImageRef to avoid leak
    CGImageRelease(mask);
    UIImage *maskedImage = [UIImage imageWithCGImage:masked];
    // release the CGImageRef to avoid leak
    CGImageRelease(masked);
    
    return maskedImage;
}

@end
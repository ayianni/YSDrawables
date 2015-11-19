//
//  LightningButton.m
//  YSDrawablesDemo
//
//  Created by Alexander Yianni on 19/11/2015.
//  Copyright © 2015 Yianni Software Pty Ltd. All rights reserved.
//

#import "LightningButton.h"
#import "YSDrawablesStyleKit.h"
@implementation LightningButton

// Implement your draw rect, using paintCode or whatever method you like
- (void) drawRect:(CGRect)rect {
    // Determine what color the fill is based on the highlighted state
    UIColor *fillColor = self.highlighted ? self.selectedFillColor : self.fillColor;

    // We'll flip the colors for sample
    UIColor *strokeColor = self.highlighted ? self.fillColor : self.selectedFillColor;
    
    [YSDrawablesStyleKit drawLightningWithFrame:rect fillColor:fillColor strokeColor:strokeColor];
}
@end

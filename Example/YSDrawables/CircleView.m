//
//  CircleView.m
//  YSDrawablesDemo
//
//  Created by Alexander Yianni on 19/11/2015.
//  Copyright © 2015 Yianni Software Pty Ltd. All rights reserved.
//

#import "CircleView.h"
#import "YSDrawablesStyleKit.h"
@implementation CircleView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [YSDrawablesStyleKit drawCircleWithFrame:rect fillColor:self.fillColor];
}

@end

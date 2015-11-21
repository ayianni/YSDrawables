//
//  YSMaskedImageView.m
//  YSDrawables
//
//  Created by Alexander Yianni on 10/11/2015.
//  Copyright © 2015 Yianni Software. All rights reserved.
//

#import "YSMaskedImageView.h"
#import "UIImage+Mask.h"
#import "UIImage+Designable.h"
@implementation YSMaskedImageView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void) awakeFromNib {
    [super awakeFromNib];
    [self maskTheImage];
}
- (instancetype) initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self assignPropDefaults];
    }
    return self;
}

// Called by XCode IB
//- (instancetype) initWithFrame:(CGRect)frame {
//    self = [self initWithFrame:frame];
//    if (self) {
//        [self assignPropDefaults];
//    }
//    return self;
//}
#pragma mark - private
- (void) assignPropDefaults {
    [self defaultBackground];
    [self defaultMaskImage];
    [self maskTheImage];
}

- (void) defaultBackground {
    if (!_backgroundImage) {
        _backgroundImage = [UIImage imageNamedDesignable:@"sample-1"];
    }
}
- (void) defaultMaskImage {
    if (!_maskImage) {
        _maskImage = [UIImage imageNamedDesignable:@"mask-random"];
    }
}
- (void) maskTheImage {
    if (self.maskImage && self.backgroundImage) {
        [self setImage:[self.backgroundImage maskImageWithMask:self.maskImage]];
    }
    else if (self.backgroundImage) {
        // Just set the background image if available
        [self setImage:self.backgroundImage];
    }
}

#pragma mark - public designable
- (void) setMaskImage:(UIImage *)maskImage {
    _maskImage = maskImage;
    [self maskTheImage];
}
- (void) setBackgroundImage:(UIImage *)backgroundImage {
    _backgroundImage = backgroundImage;
    [self maskTheImage];
}
@end

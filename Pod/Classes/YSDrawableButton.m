//
//  YSDrawableButton.m
//  YSDrawables
//
//  Created by Alexander Yianni on 18/11/2015.
//  Copyright © 2015 Yianni Software Pty Ltd. All rights reserved.
//
//  * Redistribution and use in source and binary forms, with or without
//   modification, are permitted provided that the following conditions are met:
//
//  * Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
//
//  * Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the distribution.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
//  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
//  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
//  DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
//  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
//  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
//  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
//  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE
//

#import "YSDrawableButton.h"

@implementation YSDrawableButton

// Called at runtime when injected by storyboard
- (instancetype) initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self configureButtonDefaults];        
    }
    return self;
}

// Called by Interface Builder (and programatic)
- (instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self configureButtonDefaults];
    }
    return self;
}

#pragma mark - private
- (void) configureButtonDefaults {
    // Define a default if we haven't already got one
    if (!self.fillColor) {
        self.fillColor = [UIColor orangeColor];
    }
    if (!self.selectedFillColor) {
        self.selectedFillColor = [UIColor purpleColor];
    }
}

// On tap, tell the class to re-display (for any colour changes)
#pragma mark - override to the UIButton method to render a different color when tapped.
- (void) setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    [self setNeedsDisplay];
}

#pragma mark - public IBInspectable
- (void) setFillColor:(UIColor *)fillColor {
    _fillColor = fillColor;
}
- (void) setSelectedFillColor:(UIColor *)selectedFillColor {
    _selectedFillColor = selectedFillColor;
}

@end

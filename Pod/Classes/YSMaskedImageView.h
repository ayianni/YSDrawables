//
//  YSMaskedImageView.h
//  YSDrawables
//
//  Created by Alexander Yianni on 10/11/2015.
//  Copyright © 2015 Yianni Software. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface YSMaskedImageView : UIImageView
@property (nonatomic, strong) IBInspectable UIImage *maskImage;
@property (nonatomic, strong) IBInspectable UIImage *backgroundImage;
@end

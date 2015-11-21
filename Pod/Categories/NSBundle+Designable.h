/**
 *  Copyright (c) 2014 Vlas Voloshin. All rights reserved.
 */

#import <Foundation/Foundation.h>

@interface NSBundle (Designable)

/*!
 * @discussion returns the the designableBundle for use ONLY with IB.
 */
+ (NSBundle *)designableBundle;

@end
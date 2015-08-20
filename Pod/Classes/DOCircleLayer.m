//
//  DOCircleLayer.m
//  Pods
//
//  Created by Derek Ostrander on 8/20/15.
//
//
// The MIT License (MIT)
//
// Copyright (c) 2015 Derek Ostrander
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.


#import "DOCircleLayer.h"

static NSString* const kRZBoundSizeAnimationKey = @"bounds.size";
static NSString* const kRZCornerRadiusAnimationKey = @"kDOCornerRadiusAnimationKey";

@implementation DOCircleLayer

- (void)setBounds:(CGRect)bounds
{
    [super setBounds:bounds];

    CGFloat unborderedRadius = CGRectGetHeight(bounds) / 2.0f;
    CGFloat borderedRadius = unborderedRadius + self.borderWidth / 2.0f;
    [self do_setCornerRadius:borderedRadius];
}

// set corner radius animation to sync with bounds animation
- (void)do_setCornerRadius:(CGFloat)cornerRadius
{
    CABasicAnimation *sizeAnimation = (CABasicAnimation *)[self animationForKey:kRZBoundSizeAnimationKey];
    if ( sizeAnimation != nil ) {
        CABasicAnimation *cornerRadiusAnimation = [sizeAnimation copy];
        CGSize fromSize = [sizeAnimation.fromValue CGSizeValue];
        CGSize toSize = [sizeAnimation.toValue CGSizeValue];
        cornerRadiusAnimation.keyPath = NSStringFromSelector(@selector(cornerRadius));
        cornerRadiusAnimation.fromValue = @(fromSize.height / 2.0f);
        cornerRadiusAnimation.toValue = @(toSize.height / 2.0f);
        [self addAnimation:cornerRadiusAnimation forKey:kRZCornerRadiusAnimationKey];
    }
    else {
        [self removeAnimationForKey:kRZCornerRadiusAnimationKey];
    }

    self.cornerRadius = cornerRadius;
}

@end

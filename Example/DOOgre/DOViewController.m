//
//  DOViewController.m
//  DOOgre
//
//  Created by Derek Ostrander on 08/20/2015.
//  Copyright (c) 2015 Derek Ostrander. All rights reserved.
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

#import "DOViewController.h"
#import "UIView+RZAutolayoutHelpers.h"
#import "DOView.h"

@interface DOViewController ()
@property (strong, nonatomic) DOView *v;
@end

@implementation DOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Setup the circle
    self.v = [DOView new];
    self.v.translatesAutoresizingMaskIntoConstraints = NO;
    self.v.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.v];
    [self.v rz_centerVerticallyInContainer];
    [self.v rz_centerHorizontallyInContainer];
    [self.v rz_pinWidthTo:5.f];
    [self.v rz_pinHeightTo:5.0f];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.v.rz_pinnedCenterYConstraint.constant = 50.0f;
    self.v.rz_pinnedWidthConstraint.constant = 50.0f;
    self.v.rz_pinnedHeightConstraint.constant = 50.0f;

    // Show it can animate as a circle
    [UIView animateWithDuration:5 delay:5 options:0 animations:^{
        [self.v layoutIfNeeded];
    } completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

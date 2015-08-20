//
//  DOView.m
//  DOOgre
//
//  Created by Derek Ostrander on 8/20/15.
//  Copyright (c) 2015 Derek Ostrander. All rights reserved.
//

#import "DOView.h"

@implementation DOView

// Just gotta set the layerClass to make a circle
+ (Class)layerClass
{
    return [DOCircleLayer class];
}

@end

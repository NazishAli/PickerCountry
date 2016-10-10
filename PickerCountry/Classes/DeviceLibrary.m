//
//  DeviceLibrary.m
//  DeviceLibrary
//
//  Created by Quickli on 18/07/16.
//  Copyright © 2016 Quickli. All rights reserved.
//

static float kwidth = 414;
static float kheight = 736;
#import <UIKit/UIKit.h>
#import "DeviceLibrary.h"


@implementation DeviceLibrary


+ (DeviceLibrary *)sharedManager {
    static DeviceLibrary *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}


-(float)setFont:(float)fontSize
{
    float dynamicScreenWith = ([UIScreen mainScreen].bounds.size.height);
    return (dynamicScreenWith/kheight) * fontSize;
}

-(float)setWidth:(float)width{
    float dynamicScreenWidth = ([UIScreen mainScreen].bounds.size.width);
    return (dynamicScreenWidth/kwidth) * width;
    
}

-(float)setHeight:(float)height
{
    float dynamicScreenHeight = ([UIScreen mainScreen].bounds.size.height);
    return (dynamicScreenHeight/kheight) * height;
    
}




@end

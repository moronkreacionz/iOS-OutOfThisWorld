//
//  VjOWSpaceObjects.h
//  OutOfThisWorld
//
//  Created by Vijay Mehta on 1/19/15.
//  Copyright (c) 2015 Vj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"


@interface VjOWSpaceObjects : NSObject

@property (strong, nonatomic) NSString * planetName;
@property (nonatomic) float planetGravity;
@property (nonatomic) float planetDiameter;
@property (nonatomic) float planetYearLength;
@property (nonatomic) float planetDayLength;
@property (nonatomic) float planetTemperature;
@property (nonatomic) int planetNumberOfMoons;
@property (strong, nonatomic) NSString * planetNickName;
@property (strong, nonatomic) NSString * planetFact;

@property (strong, nonatomic) UIImage * planetImage;

-(id) initWithData:(NSDictionary * )data andImage:(UIImage *) image;

@end

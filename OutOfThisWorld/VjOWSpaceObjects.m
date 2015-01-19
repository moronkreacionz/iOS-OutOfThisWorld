//
//  VjOWSpaceObjects.m
//  OutOfThisWorld
//
//  Created by Vijay Mehta on 1/19/15.
//  Copyright (c) 2015 Vj. All rights reserved.
//

#import "VjOWSpaceObjects.h"
#import "AstronomicalData.h"


@implementation VjOWSpaceObjects

-(id) init
{
    self = [self initWithData:nil andImage:nil];
    return self;
}

-(id) initWithData:(NSDictionary * )data andImage:(UIImage *) image
{
    self = [super init];
    
    self.planetName = data[PLANET_NAME];
    
    self.planetGravity = [ data[PLANET_GRAVITY] floatValue];
    
    self.planetDiameter = [ data[PLANET_DIAMETER] floatValue];
    
    self.planetYearLength = [ data[PLANET_YEAR_LENGTH] floatValue];
    
    self.planetDayLength = [ data[PLANET_DAY_LENGTH] floatValue];
    
    self.planetTemperature = [data[PLANET_TEMPERATURE] floatValue];
    
    self.planetNumberOfMoons = [data[PLANET_NUMBER_OF_MOONS] intValue];
    
    self.planetNickName = data[PLANET_NICKNAME];
    
    self.planetFact = data[PLANET_INTERESTING_FACT];
    
    self.planetImage = image;
    
    return self;
}


@end

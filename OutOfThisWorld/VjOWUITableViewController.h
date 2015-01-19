//
//  VjOWUITableViewController.h
//  OutOfThisWorld
//
//  Created by Vijay Mehta on 1/14/15.
//  Copyright (c) 2015 Vj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VjOWSpaceObjects.h"
#import "AstronomicalData.h"


@interface VjOWUITableViewController : UITableViewController


@property (strong, nonatomic) NSMutableArray * planets;
@property (strong, nonatomic) NSMutableDictionary * myDictionary;

@end

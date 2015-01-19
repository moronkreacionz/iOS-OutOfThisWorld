//
//  VjOWUITableViewController.m
//  OutOfThisWorld
//
//  Created by Vijay Mehta on 1/14/15.
//  Copyright (c) 2015 Vj. All rights reserved.
//

#import "VjOWUITableViewController.h"

@interface VjOWUITableViewController ()

@end

@implementation VjOWUITableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

    
//    NSString * planet1 = @"Mercury";
//    NSString * planet2 = @"Venus";
//    NSString * planet3 = @"Earth";
//    NSString * planet4 = @"Mars";
//    NSString * planet5 = @"Jupiter";
//    NSString * planet6 = @"Saturn";
//    NSString * planet7 = @"Uranus";
//    NSString * planet8 = @"Neptune";
//    NSString * planet9 = @"Pluto";
//    
//    self.planets = [[NSMutableArray alloc] initWithObjects:planet1, planet2, planet3, planet4, planet5,planet6,planet7,planet8,planet9, nil];
    
//    self.planets = [[NSMutableArray alloc] init];
//    [self.planets addObject:planet1];
//    [self.planets addObject:planet2];
//    [self.planets addObject:planet3];
//    [self.planets addObject:planet4];
//    [self.planets addObject:planet5];
//    [self.planets addObject:planet6];
//    [self.planets addObject:planet7];
//    [self.planets addObject:planet8];
//    [self.planets addObject:planet9];

//    self.myDictionary  = [[NSMutableDictionary alloc] init];
//    
//    [self.myDictionary setObject:@"red"     forKey:@"1one"];
//    [self.myDictionary setObject:@"blue"    forKey:@"2two"];
//    [self.myDictionary setObject:@"green"   forKey:@"3three"];
//    [self.myDictionary setObject:@"yellow"  forKey:@"4four"];
//    [self.myDictionary setObject:@"orange"  forKey:@"5five"];
//    [self.myDictionary setObject:@"grey"    forKey:@"6six"];
//    [self.myDictionary setObject:@"white"   forKey:@"7seven"];
//    [self.myDictionary setObject:@"black"   forKey:@"8eight"];
//    [self.myDictionary setObject:@"purple"  forKey:@"9nine"];
//    
//    NSLog(@"%@", self.myDictionary);
//    NSString * oneString = [self.myDictionary objectForKey:@"1one"];
//    NSLog(@"%@", oneString);
    
//    NSNumber * myInt = [NSNumber numberWithInt:5];
//    NSLog(@"%@", myInt);
//
//    NSNumber * myFloat = [NSNumber numberWithFloat:511.11];
//    NSLog(@"%@", myFloat);
//    
//    NSNumber * myBool = [NSNumber numberWithBool:TRUE];
//    NSLog(@"%@", myBool);
    
//    NSArray *objPlanets = [AstronomicalData allKnownPlanets];
//    NSLog(@"%@", objPlanets);
    
    
    self.planets = [[NSMutableArray alloc] init];
    
    for( NSMutableDictionary * planetData in [AstronomicalData allKnownPlanets] )
    {
        NSString * imageName = [NSString stringWithFormat:@"%@.jpg", planetData[PLANET_NAME]];
        
//        NSLog(@"%@", imageName);
        
        VjOWSpaceObjects * planet = [[VjOWSpaceObjects alloc] initWithData:planetData andImage:[UIImage imageNamed:imageName] ];
    
        [self.planets addObject:planet];
        
    }
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
//    if ([self.planets count] > 0 )
//        return 1;
//    else
//        return 0;
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
//    switch (section) {
//        case 2:
//            return 5;
//            break;
//        case 1:
//            return 3;
//            break;
//        case 0:
//            return 2;
//            break;
//        default:
//            return 1;
//            break;
//    }
    if( [self.planets count] > 0 )
    {
        return [self.planets count];
    }
    else
    {
        return 1;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCells" forIndexPath:indexPath];
    // Configure the cell...
    
    if ( [self.planets count] <= 0 )
    {
//        cell.backgroundColor = [[UIColor alloc] initWithRed:0.1 green:0.2 blue:0.4 alpha:0];
        cell.textLabel.text = @"Add Planets";
        return cell;
    }
    else
    {
        //cell.textLabel.text = [NSString stringWithFormat:@"Section %i, Row %i", indexPath.section, indexPath.row];
//        cell.backgroundColor = [[UIColor alloc] initWithRed:0.1 green:0.2 blue:0.4 alpha:0.0];

//        cell.textLabel.text = [NSString stringWithFormat:@"Sec%i-Row%i:: %@", indexPath.section, indexPath.row, self.planets[indexPath.row] ];
     //   cell.textLabel.text = [NSString stringWithFormat:@"Sec%i-Row%i:: %@", indexPath.section, indexPath.row, self.planets{@"red"} ];
        
       
        VjOWSpaceObjects * cellPlanet = [self.planets objectAtIndex:indexPath.row];
        
        //cell.textLabel.text = [NSString stringWithFormat:@"Sec%i-Row%i:: %@", indexPath.section, indexPath.row, cellPlanet.planetName ] ;
        
        cell.textLabel.text = [NSString stringWithFormat:@"%@", cellPlanet.planetName ] ;
        
        cell.detailTextLabel.text =[NSString stringWithFormat:@"%@", cellPlanet.planetNickName];
    
        cell.imageView.image = cellPlanet.planetImage;
        
        cell.backgroundColor = [UIColor clearColor];
        
        cell.textLabel.textColor = [UIColor whiteColor];
        
        cell.detailTextLabel.textColor = [UIColor colorWithWhite:0.7 alpha:1.0];

        //    switch (indexPath.section) {
        //        case 2:
        //            cell.backgroundColor = [[UIColor alloc] initWithRed:0.1 green:0.2 blue:0.4 alpha:0.6] ;
        //            break;
        //        case 1:
        //            cell.backgroundColor = [UIColor greenColor];
        //            break;
        //        case 0:
        //            cell.backgroundColor = [UIColor redColor];
        //            break;
        //        default:
        //            break;
        //    }
            
        return cell;
    }
}





/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

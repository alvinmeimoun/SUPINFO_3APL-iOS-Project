//
//  CompassViewController.m
//  SupInTrack
//
//  Created by Alvin Meimoun on 26/05/2015.
//  Copyright (c) 2015 SUPINFO. All rights reserved.
//

#import "CompassViewController.h"

@interface CompassViewController ()

@end

@implementation CompassViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    printf("%lu", (unsigned long)self.navigationController.viewControllers.count);
    
    LoadViewController* parentLoadController = (LoadViewController*)self.navigationController.viewControllers[0];
    if(parentLoadController != nil && parentLoadController.nearestCampus != nil){
        [self bindCampus:parentLoadController.nearestCampus];
    }
    
}

-(void) bindCampus:(CampusModel*)model {
    NSLog(model.name);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  FHMasterViewController.h
//  StoryApp
//
//  Created by Faris Halteh on 20/07/14.
//  Copyright (c) 2014 FarisHalteh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FHMasterViewController : UITableViewController

@property (nonatomic,strong) NSMutableArray *Stories;
@property (strong, nonatomic) id categoryItem;

@end

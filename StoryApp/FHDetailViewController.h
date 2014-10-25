//
//  FHDetailViewController.h
//  StoryApp
//
//  Created by Faris Halteh on 20/07/14.
//  Copyright (c) 2014 FarisHalteh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FHDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (strong, nonatomic) IBOutlet UITextView *detailDescriptionLabel;
@property (strong, nonatomic) IBOutlet UIImageView *storyImage;
@property (strong, nonatomic) IBOutlet UINavigationItem *navigationBar;

@end

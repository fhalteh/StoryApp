//
//  FHDetailViewController.m
//  StoryApp
//
//  Created by Faris Halteh on 20/07/14.
//  Copyright (c) 2014 FarisHalteh. All rights reserved.
//

#import "FHStory.h"
#import "FHDetailViewController.h"

@interface FHDetailViewController ()
- (void)configureView;
@end

@implementation FHDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
        self.storyImage.image = [self.detailItem thumbnailImage];
        self.navigationBar.title = [self.detailItem title];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self.navigationController setNavigationBarHidden:NO animated:YES];

    //self.view.backgroundColor = [UIColor colorWithPatternImage:[self.detailItem thumbnailImage]];
    UIBarButtonItem *shareButton = [[UIBarButtonItem alloc]
                                    initWithBarButtonSystemItem:UIBarButtonSystemItemAction
                                    target:self
                                    action:@selector(shareAction)];
    self.navigationItem.rightBarButtonItem = shareButton;

    [self configureView];
}

-(void) shareAction{
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:nil
                                                             delegate:self
                                                    cancelButtonTitle:@"Cancel"
                                               destructiveButtonTitle:@"Share Story"
                                                    otherButtonTitles:nil];
    [actionSheet showInView:self.view];

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

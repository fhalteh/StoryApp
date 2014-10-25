//
//  FHMasterViewController.m
//  StoryApp
//
//  Created by Faris Halteh on 20/07/14.
//  Copyright (c) 2014 FarisHalteh. All rights reserved.
//

#import "FHMasterViewController.h"

#import "FHDetailViewController.h"
#import "FHStory.h"
#import "FHCategory.h"

@interface FHMasterViewController () {
    NSMutableArray *_objects;
}
@end

@implementation FHMasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)setCategoryItem:(id)newDetailItem
{
    
    if (_categoryItem != newDetailItem) {
        _categoryItem = newDetailItem;
        
        // Update the view.
        //[self configureView];
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    //[self performSegueWithIdentifier:@"showTableView" sender:self];
	// Do any additional setup after loading the view, typically from a nib.
    self.Stories = [NSMutableArray array];
    
    FHCategory *currentCategory = self.categoryItem;
    
    self.Stories = [currentCategory stories];
    
    //call the method that adds stories to the array
    //[self addStoriesToArray];

    //to change the color of the navigation controller
    //self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.35 green:0.81 blue:0.88 alpha:1.0];

}

/*
-(void) addStoriesToArray{
    FHStory *story1 = [[FHStory alloc] init];
    [story1 setTitle:@"Hello Kitty"];
    [story1 setDescription:@"She may look innocent, but Hello Kitty could be a lot sneakier than we could have ever dreamed. The tiny white cat—whose iconic cheerful face is plastered on everything from notebooks to vibrators—has invaded our consciousness to such an extent that we accept her unquestioningly. Well, we should have known that no one can be that happy all the time. It seems, according to a new book, that friendly face might be hiding some very dark truths. The clumsily titled Hello Kitty's Guide to Japan in English and Japanese has called into question everything we thought we knew about Kitty."];
    UIImage *image1 = [UIImage imageNamed:@"hellokitty.jpg"];
    [story1 setThumbnailImage:image1];
    [self.Stories addObject:story1];

    
    FHStory *story2 = [[FHStory alloc] init];
    [story2 setTitle:@"The Goose with the Golden Eggs"];
    [story2 setDescription:@"Once upon a time, a man and his wife had the good fortune to have a goose which laid a golden egg every day. Lucky though they were, they soon began to think they were not getting rich fast enough.They imagined that if the bird must be able to lay golden eggs, its insides must be made of gold. And they thought that if they could get all that precious metal at once, they would get mighty rich very soon. So the man and his wife decided to kill the bird. Short StoriesHowever, upon cutting the goose open, they were shocked to find that its innards were like that of any other goose!"];
    UIImage *image2 = [UIImage imageNamed:@"goldeneggs.jpg"];
    [story2 setThumbnailImage:image2];
    [self.Stories addObject:story2];
    
    FHStory *story3 = [[FHStory alloc] init];
    [story3 setTitle:@"The Lion and the Mouse"];
    [story3 setDescription:@"Once when a Lion was asleep, a little Mouse began running up and down upon him. This soon wakened the Lion, who placed his huge paw upon him and opened his big jaws to swallow him. \"Pardon, O King!\" cried the little Mouse, \"Forgive me this time. I shall never repeat it and I shall never forget your kindness. And who knows, but I may be able to do you a good turn one of these days?” The Lion was so tickled at the idea of the Mouse being able to help him, that he lifted up his paw and let him go. Sometime later a few hunters captured the King and tied him to a tree while they went in search of a wagon to carry him on. Just then the little Mouse happened to pass by, and seeing the sad plight in which the Lion was, ran up to him and soon gnawed away the ropes that bound the King of the Beasts.\"Was I not right?\" said the little Mouse, very happy to help the Lion. MORAL: Little friends may prove great friends."];
    UIImage *image3 = [UIImage imageNamed:@"lionmouse.jpg"];
    [story3 setThumbnailImage:image3];
    [self.Stories addObject:story3];
    
    
}
*/
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.Stories.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    FHStory *story = self.Stories[indexPath.row];
    
    cell.textLabel.text = [story title];
    cell.detailTextLabel.text = [story description];
    cell.imageView.image = [story thumbnailImage];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return NO;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
 
}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        FHStory *storyExtracted = self.Stories[indexPath.row];
        
        [[segue destinationViewController] setDetailItem:storyExtracted];
    }
}

@end

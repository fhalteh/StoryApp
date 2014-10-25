//
//  FHCategoryViewControllerTableViewController.m
//  StoryApp
//
//  Created by Faris Halteh on 23/07/14.
//  Copyright (c) 2014 FarisHalteh. All rights reserved.
//

#import "FHCategoryViewControllerTableViewController.h"
#import "FHCategory.h"
#import "FHMasterViewController.h"
#import "FHStory.h"

@interface FHCategoryViewControllerTableViewController ()

@end

@implementation FHCategoryViewControllerTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.categories = [[NSMutableArray alloc]init];
    
    [self addStoriesToArray];
    
    /*
    FHCategory *category2 = [[FHCategory alloc]init];
    category2.title = @"Comedy";
    [self.categories addObject:category2];
    
    FHCategory *category3 = [[FHCategory alloc]init];
    category3.title = @"Extra";
    [self.categories addObject:category3];
*/
                       
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void) addStoriesToArray{
    
    FHCategory *category1 = [[FHCategory alloc]init];
    category1.title = @"Fiction";
    NSMutableArray *Stories = [[NSMutableArray alloc]init];
    
    FHStory *story1 = [[FHStory alloc] init];
    [story1 setTitle:@"Hello Kitty"];
    [story1 setDescription:@"She may look innocent, but Hello Kitty could be a lot sneakier than we could have ever dreamed. The tiny white cat—whose iconic cheerful face is plastered on everything from notebooks to vibrators—has invaded our consciousness to such an extent that we accept her unquestioningly. Well, we should have known that no one can be that happy all the time. It seems, according to a new book, that friendly face might be hiding some very dark truths. The clumsily titled Hello Kitty's Guide to Japan in English and Japanese has called into question everything we thought we knew about Kitty."];
    UIImage *image1 = [UIImage imageNamed:@"hellokitty.jpg"];
    [story1 setThumbnailImage:image1];
    [Stories addObject:story1];
    
    
    FHStory *story2 = [[FHStory alloc] init];
    [story2 setTitle:@"The Goose with the Golden Eggs"];
    [story2 setDescription:@"Once upon a time, a man and his wife had the good fortune to have a goose which laid a golden egg every day. Lucky though they were, they soon began to think they were not getting rich fast enough.They imagined that if the bird must be able to lay golden eggs, its insides must be made of gold. And they thought that if they could get all that precious metal at once, they would get mighty rich very soon. So the man and his wife decided to kill the bird. Short StoriesHowever, upon cutting the goose open, they were shocked to find that its innards were like that of any other goose!"];
    UIImage *image2 = [UIImage imageNamed:@"goldeneggs.jpg"];
    [story2 setThumbnailImage:image2];
    [Stories addObject:story2];
    
    FHStory *story3 = [[FHStory alloc] init];
    [story3 setTitle:@"The Lion and the Mouse"];
    [story3 setDescription:@"Once when a Lion was asleep, a little Mouse began running up and down upon him. This soon wakened the Lion, who placed his huge paw upon him and opened his big jaws to swallow him. \"Pardon, O King!\" cried the little Mouse, \"Forgive me this time. I shall never repeat it and I shall never forget your kindness. And who knows, but I may be able to do you a good turn one of these days?” The Lion was so tickled at the idea of the Mouse being able to help him, that he lifted up his paw and let him go. Sometime later a few hunters captured the King and tied him to a tree while they went in search of a wagon to carry him on. Just then the little Mouse happened to pass by, and seeing the sad plight in which the Lion was, ran up to him and soon gnawed away the ropes that bound the King of the Beasts.\"Was I not right?\" said the little Mouse, very happy to help the Lion. MORAL: Little friends may prove great friends."];
    UIImage *image3 = [UIImage imageNamed:@"lionmouse.jpg"];
    [story3 setThumbnailImage:image3];
    [Stories addObject:story3];
    
    
    category1.stories = Stories;
    
    [self.categories addObject:category1];

    //Category 2:
    FHCategory *category2 = [[FHCategory alloc]init];
    category2.title = @"Biographies";
    NSMutableArray *Stories2 = [[NSMutableArray alloc]init];
    
    FHStory *bstory1 = [[FHStory alloc] init];
    [bstory1 setTitle:@"Hello Kitty"];
    [bstory1 setDescription:@"She may look innocent, but Hello Kitty could be a lot sneakier than we could have ever dreamed. The tiny white cat—whose iconic cheerful face is plastered on everything from notebooks to vibrators—has invaded our consciousness to such an extent that we accept her unquestioningly. Well, we should have known that no one can be that happy all the time. It seems, according to a new book, that friendly face might be hiding some very dark truths. The clumsily titled Hello Kitty's Guide to Japan in English and Japanese has called into question everything we thought we knew about Kitty."];
    UIImage *bimage1 = [UIImage imageNamed:@"hellokitty.jpg"];
    [bstory1 setThumbnailImage:image1];
    [Stories2 addObject:bstory1];
    
    
    FHStory *bstory2 = [[FHStory alloc] init];
    [bstory2 setTitle:@"The Goose with the Golden Eggs"];
    [bstory2 setDescription:@"Once upon a time, a man and his wife had the good fortune to have a goose which laid a golden egg every day. Lucky though they were, they soon began to think they were not getting rich fast enough.They imagined that if the bird must be able to lay golden eggs, its insides must be made of gold. And they thought that if they could get all that precious metal at once, they would get mighty rich very soon. So the man and his wife decided to kill the bird. Short StoriesHowever, upon cutting the goose open, they were shocked to find that its innards were like that of any other goose!"];
    UIImage *bimage2 = [UIImage imageNamed:@"goldeneggs.jpg"];
    [bstory2 setThumbnailImage:image2];
    [Stories2 addObject:bstory2];
   
    
    category2.stories = Stories2;
    
    [self.categories addObject:category2];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.categories.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"categoryCell" forIndexPath:indexPath];
    
    FHCategory *currentCategory = self.categories[indexPath.row];
    
    
    // Configure the cell...
    //cell.textLabel.text = [currentCategory title];
    cell.imageView.image = [UIImage imageNamed:@"biography.png"];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([[segue identifier] isEqualToString:@"showCategory"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        FHCategory *categoryExtracted = self.categories[indexPath.row];
        
        [[segue destinationViewController] setCategoryItem:categoryExtracted];
    }
}


@end

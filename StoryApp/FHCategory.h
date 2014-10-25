//
//  FHCategory.h
//  StoryApp
//
//  Created by Faris Halteh on 23/07/14.
//  Copyright (c) 2014 FarisHalteh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FHCategory : NSObject

@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) NSString * description;
@property (nonatomic, strong) NSMutableArray *stories;

@property (nonatomic, strong) UIImage *image;

@end

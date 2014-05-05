//
//  FavoriteCharacters.h
//  MyFavoriteCharacters
//
//  Created by Jian Yao Ang on 5/5/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface FavoriteCharacters : NSManagedObject

@property (nonatomic, retain) NSString * character;
@property (nonatomic, retain) NSString * gender;
@property (nonatomic, retain) NSString * powers;

@end

//
//  RootViewController.h
//  MyFavoriteCharacters
//
//  Created by Jian Yao Ang on 5/5/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CharactersProfileViewController : UIViewController <NSFetchedResultsControllerDelegate>

@property NSManagedObjectContext *managedObjectContext;
@property NSFetchedResultsController *fetchedResultsController;
@end

//
//  RootViewController.m
//  MyFavoriteCharacters
//
//  Created by Jian Yao Ang on 5/5/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

#import "RootViewController.h"
#import "FavoriteCharacters.h"
#import "AppDelegate.h"
@interface RootViewController () <UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *characters;
    IBOutlet UITableView *charactersTableView;
}
@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    characters = [NSMutableArray new];
    [self load];
}

-(void)load
{
    NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:@"FavoriteCharacters"];
    NSSortDescriptor *sortDescriptorName = [[NSSortDescriptor alloc] initWithKey:@"character" ascending:YES];
    NSArray *sortDescriptor = [NSArray arrayWithObject:sortDescriptorName];
    request.sortDescriptors = sortDescriptor;
    
    NSArray *charactersDetails = [self.managedObjectContext executeFetchRequest:request error:nil];
    
    if (charactersDetails.count)
    {
        characters = [NSMutableArray arrayWithArray:charactersDetails];
    }
    
    [charactersTableView reloadData];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return characters.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FavoriteCharacters *favoriteCharacters = characters[indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CharactersCellID"];
    cell.textLabel.text = favoriteCharacters.character;
    cell.detailTextLabel.text = favoriteCharacters.powers;
    cell.detailTextLabel.numberOfLines = 0;
    return cell;
}




@end

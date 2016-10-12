//
//  StoreItemListViewController.h
//  Stores
//
//  Created by Fredrick Ohen on 10/10/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Store.h"
#import "StoreItemListViewController.h"
#import "ItemAdd.h"
#import "ItemAddedViewController.h"
@protocol ItemAddControllerDelegate <NSObject>

-(void) itemAddControllerDidAddItem: (Store *) itemAdded;

@end
@interface StoreItemListViewController : UITableViewController<ItemAddViewControllerDelegate>

@property (nonatomic,strong) Store *selectedStoreItem;


@end

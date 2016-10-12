//
//  StoreListTableViewController.h
//  Stores
//
//  Created by Fredrick Ohen on 10/10/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Store.h"
#import "StoreItemListViewController.h"
#import "AddViewController.h"

@interface StoreListTableViewController : UITableViewController<AddViewControllerDelegate>
{
    NSMutableArray *storeLists;
}

@end

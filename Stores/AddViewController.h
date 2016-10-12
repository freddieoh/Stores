//
//  AddViewController.h
//  Stores
//
//  Created by Fredrick Ohen on 10/11/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Store.h"
@protocol AddViewControllerDelegate <NSObject>

- (void) addStoreListViewControllerDidAddStoreList:(Store *) storeList;

@end

@interface AddViewController : UIViewController

@property(nonatomic,weak) IBOutlet UITextField *storeNameTextfield;
@property (nonatomic,weak) IBOutlet UITextField *storeNumberTextField;
@property (nonatomic,weak) id<AddViewControllerDelegate>delegate;

@end

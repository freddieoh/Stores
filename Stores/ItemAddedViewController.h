//
//  ItemAddedViewController.h
//  Stores
//
//  Created by Fredrick Ohen on 10/11/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import <UIKit/UIKit.h>
#import"Store.h"
#import "ItemAdd.h"

@protocol ItemAddViewControllerDelegate <NSObject>

-(void) itemAddDidAddController: (ItemAdd *) itemAdded;

@end

@interface ItemAddedViewController : UIViewController
@property (nonatomic,weak) IBOutlet UITextField *itemNameTextField;
@property (nonatomic,weak) id<ItemAddViewControllerDelegate>delegate;
@end

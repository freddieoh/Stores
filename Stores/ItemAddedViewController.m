//
//  ItemAddedViewController.m
//  Stores
//
//  Created by Fredrick Ohen on 10/11/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "ItemAddedViewController.h"

@interface ItemAddedViewController ()

@end

@implementation ItemAddedViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)savedButtonPressed:(id)sender {

   ItemAdd *itemAdded = [[ItemAdd alloc]init];
   itemAdded.itemName = self.itemNameTextField.text;
    
    [self.delegate itemAddDidAddController:itemAdded];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

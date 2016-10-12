//
//  AddViewController.m
//  Stores
//
//  Created by Fredrick Ohen on 10/11/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "AddViewController.h"

@interface AddViewController ()

@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction) savedButtonPressed{
    Store *storeList = [[Store alloc]init];
    storeList.storeName = self.storeNameTextfield.text;
    storeList.storeNumber = self.storeNumberTextField.text;
    storeList.itemAdded = [NSMutableArray array];
    
    [self.delegate addStoreListViewControllerDidAddStoreList:storeList];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

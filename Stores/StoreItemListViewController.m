//
//  StoreItemListViewController.m
//  Stores
//
//  Created by Fredrick Ohen on 10/10/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "StoreItemListViewController.h"
#import "StoreListTableViewController.h"
@interface StoreItemListViewController ()

@end

@implementation StoreItemListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = self.selectedStoreItem.storeName;
    // self.title = self.selectedStoreItem.storeNumber;
    //self.title [NSString stringWithFormat:@"%@:%@",self.selectedStoreItem.storeName,self.selectedStoreItem.storeNumber;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    
    return self.selectedStoreItem.itemAdded.count;
}

-(void) itemAddDidAddController: (ItemAdd *) itemAdded {
    
    [self.selectedStoreItem.itemAdded addObject:itemAdded];
    [self.tableView reloadData];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ItemAddedViewController *itemAddedViewController = segue.destinationViewController;
    itemAddedViewController.delegate = self;

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
    
    // Configure the cell...
    ItemAdd *itemAdded = self.selectedStoreItem.itemAdded[indexPath.row];
    cell.textLabel.text = itemAdded.itemName;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
@end

//
//  StoreListTableViewController.m
//  Stores
//
//  Created by Fredrick Ohen on 10/10/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "StoreListTableViewController.h"

@interface StoreListTableViewController ()

@end

@implementation StoreListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        
    //Unarchive NSUserDefaults here
    
    NSData *data = [[NSUserDefaults standardUserDefaults]objectForKey:@"storeList"];
    
    if(data == nil) {
         storeLists = [[NSMutableArray alloc]init];
    } else {
         storeLists = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    }
    
    [self.tableView reloadData];
    
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
    return [storeLists count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    Store *store = storeLists[indexPath.row];
    cell.textLabel.text = store.storeName;
    cell.detailTextLabel.text = store.storeNumber;
    return cell;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"showStoreList"]) {
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
   Store *storeList = storeLists[indexPath.row];
        StoreItemListViewController *controller = segue.destinationViewController;
    controller.selectedStoreItem = storeList;
    }
    
    else {
            // person clicked add button
        AddViewController *addStoreListViewController = segue.destinationViewController;
        addStoreListViewController.delegate = self;
    }
}
//add Delegate Method
-(void) addStoreListViewControllerDidAddStoreList:(Store *)storeList {
    [storeLists addObject:storeList];
    
    [self.tableView reloadData];
    NSUserDefaults *userDefaults= [NSUserDefaults standardUserDefaults];
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:storeLists];
    
    [userDefaults setObject:data forKey:@"storeList"];
    [userDefaults synchronize];
}
-(void)savedDataList {
    
   
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

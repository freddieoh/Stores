//
//  Store.h
//  Stores
//
//  Created by Fredrick Ohen on 10/10/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Store : NSObject<NSCoding>

@property(nonatomic, copy) NSString *storeName;
@property(nonatomic, copy) NSString *storeNumber;
@property (nonatomic,strong) NSMutableArray *itemAdded;

@end

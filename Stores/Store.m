//
//  Store.m
//  Stores
//
//  Created by Fredrick Ohen on 10/10/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "Store.h"

@implementation Store

-(id)initWithCoder:(NSCoder *)decoder {
    
    self.storeName =(NSString *) [decoder decodeObjectForKey:@"storeName"];
    self.storeNumber = (NSString *) [decoder decodeObjectForKey:@"storeNumber"];
 
    return self;
}

-(void) encodeWithCoder:(NSCoder *)encoder {
    
    [encoder encodeObject:self.storeName forKey:@"storeName"];
    [encoder encodeObject:self.storeNumber forKey:@"storeNumber"];

}
@end

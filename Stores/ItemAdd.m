//
//  ItemAdd.m
//  Stores
//
//  Created by Fredrick Ohen on 10/12/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

#import "ItemAdd.h"

@implementation ItemAdd

-(id) initWithCoder:(NSCoder *)decoder {
    
    self.itemName= [decoder decodeObjectForKey:@"itemName"];
    return self;
}

- (void) encodeWithCoder:(NSCoder *)encoder {
    
    [encoder encodeObject:self.itemName forKey:@"itemName"];
    
}
@end

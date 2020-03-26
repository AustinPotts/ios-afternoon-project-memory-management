//
//  PEIContact.m
//  PEIContatcs-xcode
//
//  Created by Austin Potts on 3/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "PEIContact.h"

@implementation PEIContact

- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email
                      number:(NSString *)number {
    
    if (self = [super init]) {
        _name = name;
        _email = email;
        _number = number;
    }
    return self;
    
}




@end

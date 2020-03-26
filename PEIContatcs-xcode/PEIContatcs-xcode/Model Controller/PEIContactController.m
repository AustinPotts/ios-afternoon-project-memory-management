//
//  PEIContactController.m
//  PEIContatcs-xcode
//
//  Created by Austin Potts on 3/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "PEIContactController.h"
#import "PEIContact.h"

@interface PEIContactController ()

@property (nonatomic)NSMutableArray *innerContatcs;

@end

@implementation PEIContactController


- (instancetype)init {
    self = [super init];
    if (self) {
        [self addTestData];
    }
    return self;
}

// computed property for contatcs
- (NSArray *)contacts {
    return [self.innerContatcs copy];
}
// 2. Lazy init for internal contatcs
- (NSMutableArray *)innerContatcs {
    if (!_innerContatcs){
        _innerContatcs = [[NSMutableArray alloc] init];
    }
    return _innerContatcs;
}


// 3. Test data
- (void)addTestData {
    
    // import the swift header
    [self.innerContatcs addObjectsFromArray:@[
        
        [[PEIContact alloc] initWithName:@"Austin" email:@"Email.com" number:@"123456"],
        
        
        [[PEIContact alloc] initWithName:@"Bill" email:@"yahoo.com" number:@"66666666"],
        
    ]];
    
}

@end

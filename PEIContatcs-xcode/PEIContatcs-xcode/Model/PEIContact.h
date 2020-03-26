//
//  PEIContact.h
//  PEIContatcs-xcode
//
//  Created by Austin Potts on 3/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PEIContact : NSObject

@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSString *email;
@property (nonatomic, readonly) NSString *number;

- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email
                      number:(NSString *)number;

@end

NS_ASSUME_NONNULL_END

//
//  PEIContactController.h
//  PEIContatcs-xcode
//
//  Created by Austin Potts on 3/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>



NS_ASSUME_NONNULL_BEGIN

@class PEIContact;

@interface PEIContactController : NSObject

// <Contatcy> is a lightweight generic array type
@property (nonatomic,readonly,copy,nonnull) NSArray<PEIContact *> *contacts;

@end

NS_ASSUME_NONNULL_END

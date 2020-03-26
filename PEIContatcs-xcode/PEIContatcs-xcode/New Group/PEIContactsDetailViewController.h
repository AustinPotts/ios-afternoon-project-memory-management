//
//  PEIContactsDetailViewController.h
//  PEIContatcs-xcode
//
//  Created by Austin Potts on 3/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class PEIContactController;
@class PEIContact;

@interface PEIContactsDetailViewController : UIViewController <UISearchBarDelegate>

@property PEIContactController *controller;
@property PEIContact *artist;

@end

NS_ASSUME_NONNULL_END

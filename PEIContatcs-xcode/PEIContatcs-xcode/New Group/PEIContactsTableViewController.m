//
//  PEIContactsTableViewController.m
//  PEIContatcs-xcode
//
//  Created by Austin Potts on 3/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "PEIContactsTableViewController.h"
#import "PEIContactController.h"
#import "PEIContact.h"
#import "PEIContactsDetailViewController.h"

@interface PEIContactsTableViewController ()

//@property (nonatomic) PEIContactController *contactController;

@end

@implementation PEIContactsTableViewController


- (PEIContactController *)controller{
    if (!_controller) {
        _controller = [[PEIContactController alloc] init];
    }
    return _controller;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//
//    return _contactController.contacts.count;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

     return [[self.controller contacts] count]; // Ask Paul if should be self.controller.contacts.count
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
     PEIContact *contact = self.controller.contacts[indexPath.row];
     cell.textLabel.text = contact.name;
     cell.detailTextLabel.text = contact.number;
     return cell;
    
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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"ShowContactSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        PEIContactsDetailViewController *detailVC = segue.destinationViewController;
        detailVC.controller = self.controller;
        detailVC.artist = self.controller.contacts[indexPath.row];
    }
    
    if ([segue.identifier isEqualToString:@"AddContactSegue"]) {
        PEIContactsDetailViewController *detailVC = segue.destinationViewController;
        detailVC.controller = self.controller;
    }
    
    
}

@end

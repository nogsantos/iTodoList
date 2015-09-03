//
//  ToDoListTableViewController.m
//  iTodoList
//
//  Created by Fabricio Nogueira dos Santos on 9/1/15.
//  Copyright (c) 2015 Fabricio Nogueira. All rights reserved.
//

#import "ToDoListTableViewController.h"
#import "ToDoItem.h"
#import "AddToDoItemViewController.h"
/**
 * private interface
 */
@interface ToDoListTableViewController ()

    @property NSMutableArray *toDoItems;

@end

@implementation ToDoListTableViewController
/**
 * is it the class constructor?
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    /*
     * implementation to allocate and initialize the toDoItems array in the viewDidLoad method
     */
    self.toDoItems = [[NSMutableArray alloc] init];
    [self loadInitialData];
    
}
/**
 * adding some static data to the table view.
 */
- (void)loadInitialData {
    
    for (int i = 0; i < 10; i ++) {
        ToDoItem *objToDoItem = [[ToDoItem alloc] init];
        objToDoItem.itemName  = [NSString stringWithFormat:@"Task: %i", i];
        [self.toDoItems addObject:objToDoItem];
    }
}
/**
 *
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Table view data source
/**
 * To display a section in a table view
 */
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}
/**
 * Tells the table view how many rows to display in a given section.
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.toDoItems count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // 
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell" forIndexPath:indexPath];
    // Configure the cell...
    ToDoItem *toDoItem = [self.toDoItems objectAtIndex:indexPath.row];
    // set the text label for the cell
    cell.textLabel.text = toDoItem.itemName;
    // This code checks the completion state of a to-do item and sets the cell accessory based on that.
    if (toDoItem.completed) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}
/**
 * a table view notifies its delegate when the user taps a cell
 * delegate method to respond to user taps and update your to-do list items accordingly.
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    /*
     * In this method, you want to respond to a tap but not actually leave the cell selected.
     * Add the following code to deselect the cell immediately after selection:
     */
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    /*
     * search for the ToDoItem in your toDoItems array that corresponds to the cell that was tapped.
     */
    ToDoItem *tappedItem = [self.toDoItems objectAtIndex:indexPath.row];
    /*
     * Toggle the completion state of the tapped item.
     */
    tappedItem.completed = !tappedItem.completed;
    /*
     * Tell the table view to reload the row whose data you just updated.
     */
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
}
/*
 * Form get value
 */
- (IBAction)unwindToList:(UIStoryboardSegue *)segue{
    
    AddToDoItemViewController *source = [segue sourceViewController];
    ToDoItem *item = source.toDoItem;
    if (item != nil) {
        [self.toDoItems addObject:item];
        [self.tableView reloadData];
    }
}

@end

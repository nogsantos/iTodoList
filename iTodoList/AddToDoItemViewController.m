//
//  AddToDoItemViewController.m
//  iTodoList
//
//  Created by Fabricio Nogueira dos Santos on 9/1/15.
//  Copyright (c) 2015 Fabricio Nogueira. All rights reserved.
//

#import "AddToDoItemViewController.h"
#import "ToDoItem.h"

@interface AddToDoItemViewController()

    @property (weak, nonatomic) IBOutlet UITextField *textField;
    @property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation AddToDoItemViewController

///**
// * Method to mark task as completed
// *
// */
//- (void)markAsCompleted:(BOOL) isCompleted{
//    /*
//     */
//    self.completed = isCompleted;
//    /*
//     */
//    [self setCompletionDate];
//}
///**
// * set or unset the completed date of task
// *
// */
//- (void)setCompletionDate{
//    if (self.completed) {
//        self.completionDate = [NSDate date];
//    }else{
//        self.completionDate = nil;
//    }
//}


- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    /*
     * If the Save button wasn’t tapped, instead of saving the item, 
     * we want the method to return without doing anything else
     */
    if (sender != self.saveButton) return;
    /*
     * check whether the user entered any text in the text field.
     */
    if (self.textField.text.length > 0) {
        self.toDoItem = [[ToDoItem alloc] init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
    }
}

@end

//
//  AddToDoItemViewController.m
//  iTodoList
//
//  Created by Fabricio Nogueira dos Santos on 9/1/15.
//  Copyright (c) 2015 Fabricio Nogueira. All rights reserved.
//

#import "AddToDoItemViewController.h"


@implementation AddToDoItemViewController

/**
 * Method to mark task as completed
 *
 */
- (void)markAsCompleted:(BOOL) isCompleted{
    /*
     */
    self.completed = isCompleted;
    /*
     */
    [self setCompletionDate];
}
/**
 * set or unset the completed date of task
 *
 */
- (void)setCompletionDate{
    if (self.completed) {
        self.completionDate = [NSDate date];
    }else{
        self.completionDate = nil;
    }
}



- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

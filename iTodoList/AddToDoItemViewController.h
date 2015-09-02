//
//  AddToDoItemViewController.h
//  iTodoList
//
//  Created by Fabricio Nogueira dos Santos on 9/1/15.
//  Copyright (c) 2015 Fabricio Nogueira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddToDoItemViewController : UIViewController

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;
@property NSDate *completionDate;

- (void)markAsCompleted:(BOOL) isCompleted;


@end
//
//  ToDoItem.h
//  iTodoList
//
//  Created by Fabricio Nogueira dos Santos on 9/2/15.
//  Copyright (c) 2015 Fabricio Nogueira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;
@property NSDate *completionDate;

@end

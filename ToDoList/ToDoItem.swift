//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Tiffany Huang on 2014-09-15.
//  Copyright (c) 2014 Tiffany Huang. All rights reserved.
//

import Foundation

class ToDoItem : NSObject
{
    var itemName: String!
    var completed: Bool?
    var creationDate: NSDate!
    var completionDate: NSDate?
    
    init(itemName: String) {
        self.itemName = itemName
    }
    
    func markStatus (status: Bool, completeDate: NSDate) {
        completed = status;
        
        func setCompletionDate (date:NSDate) {
            completionDate = date
        }
        
        if status {
            setCompletionDate(completeDate)
        }
    }
    
    func isCompleted () -> Bool {
        return completed ? completed! : false;
    }
    
    
}
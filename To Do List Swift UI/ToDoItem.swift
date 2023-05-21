//
//  ToDoItem.swift
//  To Do List Swift UI
//
//  Created by Nidhi Pabbathi on 5/20/23.
//

import Foundation

public class ToDoItem {
    private var title : String
    private var isImportant : Bool
    
    init(title: String, isImportant : Bool = false) {
        self.title = title
        self.isImportant = isImportant
    }
}

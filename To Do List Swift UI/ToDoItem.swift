//
//  ToDoItem.swift
//  To Do List Swift UI
//
//  Created by Nidhi Pabbathi on 5/20/23.
//

import Foundation

public class ToDoItem : Identifiable {
    public var title : String
    public var isImportant : Bool
    public var id = UUID()
    
    init(title: String, isImportant : Bool = false) {
        self.title = title
        self.isImportant = isImportant
    }
}

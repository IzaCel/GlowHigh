//
//  ToDoItem.swift
//  GlowHigh
//
//  Created by scholar on 8/17/23.
//

import Foundation

class ToDoItem: Identifiable {
    
    var id = UUID()
    var title = ""
    
    init(title: String) {
        self.title = title
    }
    
}

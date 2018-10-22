//
//  Todo.swift
//  God Morning
//
//  Created by ratexx on 10/21/18.
//  Copyright © 2018 ratexx. All rights reserved.
//

import Foundation

class Todo {
    private var items = [TodoItem]()
    var totalItems: Int {
        return items.count
    }
    func item(at index: Int) -> TodoItem {
        return items[index]
    }
    func add(item: TodoItem) {
        items.insert(item, at: 0)
    }
    func remove(at index: Int) {
        items.remove(at: index)
    }
    
    func index(of item: TodoItem) -> Int? {
        return items.index(where: { (todoItem) -> Bool in
            return todoItem === item
        })
    }
    
    func move(from sourceIndex: Int, to destinationIndex: Int) {
        let item = items.remove(at: sourceIndex)
        items.insert(item, at: destinationIndex)
    }
}


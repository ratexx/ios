//
//  TodoItem.swift
//  God Morning
//
//  Created by ratexx on 10/21/18.
//  Copyright © 2018 ratexx. All rights reserved.
//

import Foundation
class TodoItem{
    var title: String
    var isDone: Bool
    
    init(title: String, isDone: Bool = false){
            self.title = title
            self.isDone = isDone
        
        func toggleIsDone() {
            self.isDone = !self.isDone
        }
    }
    
}

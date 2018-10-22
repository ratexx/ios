//
//  ViewController.swift
//  God Morning
//
//  Created by ratexx on 10/21/18.
//  Copyright © 2018 ratexx. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource ,UITableViewDelegate{
    
    var todo = Todo()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todo.totalItems
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoItemCell", for: indexPath)
        let item = todo.item(at: indexPath.row)
        cell.textLabel?.text = item.title
        cell.accessoryType = item.isDone ?.checkmark : .none
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        todo.add(item: TodoItem(title: "เทพอวยพร " ,isDone: true))
        todo.add(item: TodoItem(title: "กิจกรรมบูชาเทพ "))
        todo.add(item: TodoItem(title: " สารบัญเทพ "))
        // Do any additional setup after loading the view, typically from a nib.
    }


}


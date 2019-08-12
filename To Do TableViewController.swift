//
//  To Do TableViewController.swift
//  ToDoList(Day 6)
//
//  Created by Apple on 8/12/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class To_Do_TableViewController: UITableViewController {
var toDos : [ToDo] = []
    
    func createToDos() -> [ToDo] {
        
        let swift = ToDo()
        swift.name = "Learn Swift"
        swift.important = true
        
        let dog = ToDo()
        dog.name = "Walk the Dog"
        // important is set to false by default
        
        return [swift, dog]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        toDos = createToDos()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let ToDo = toDos[indexPath.row]
        
        
        if ToDo.important {
            cell.textLabel?.text = " ❗️ " + ToDo.name
            
        } else {
            cell.textLabel?.text = ToDo.name
            
        }
        
        
        return cell
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

   
    
}

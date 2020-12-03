//
//  ViewController.swift
//  AssignmentNotebook2020
//
//  Created by  on 11/30/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
//    var assignments = ["Chemistry HW", "Spanish Quiz", "Build a shelf", "Write an argument for History", "Code Challenge in CS"]
    var assignments = [Assignment]()

    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        
        let one = Assignment(n: "Algebra 2 HW", d: "12/4")
        let two = Assignment(n: "Chemistry HW", d: "12/10")
        let three = Assignment(n: "Build a shelf", d: "12/15")
        
        assignments.append(one)
        assignments.append(two)
        assignments.append(three)
        
        
    }

    @IBAction func addButtonTapped(_ sender: UIBarButtonItem)
    {
        // create new assignment
        let newAssignment = Assignment(n: "Test", d: "Tomorrow")
        
        // append to assignments
        assignments.append(newAssignment)
        
        // reload the table
        myTableView.reloadData()
        
    }
    
    @IBAction func editButtonTapped(_ sender: UIBarButtonItem)
    {
        
        
    }
    
    // MARK: TableView Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return assignments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        // change the cells properties...
        let currentAssignment = assignments[indexPath.row]
        cell.textLabel?.text = currentAssignment.name
        cell.textLabel?.font = UIFont(name: "Avenir", size: 30)
        cell.backgroundColor = UIColor.lightGray
        cell.textLabel?.textColor = UIColor.black
        cell.detailTextLabel?.text = currentAssignment.date
        cell.detailTextLabel?.textColor = UIColor.darkGray
        cell.detailTextLabel?.font = UIFont(name: "Avenir", size: 20)
        
        return cell
    }
}


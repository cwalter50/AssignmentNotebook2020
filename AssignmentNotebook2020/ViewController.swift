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
        let alert = UIAlertController(title: "Add a New Assignment", message: "Fill out the form below", preferredStyle: .alert)
        alert.addTextField(configurationHandler: {
            textfield in
            textfield.placeholder = "Enter Assignment Name"
        })
        alert.addTextField(configurationHandler: {
            textfield in
            textfield.placeholder = "Enter Assignment Due Date"
        })
        let submitButton = UIAlertAction(title: "Submit", style: .default, handler: {
            action in
            // write code here for when the user taps the button
            let nameTF = alert.textFields![0]
            let dateTF = alert.textFields![1]
            
            // create new assignment
            let newAssignment = Assignment(n: nameTF.text ?? "Study", d: dateTF.text ?? "Tomorrow")
            
            // append to assignments
            self.assignments.append(newAssignment)
            
            // reload the table
            self.myTableView.reloadData()
            
        })
        let cancelButton = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        
        alert.addAction(submitButton)
        alert.addAction(cancelButton)
        
        present(alert, animated: true, completion: nil)
        
        
       
        
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


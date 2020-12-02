//
//  ViewController.swift
//  AssignmentNotebook2020
//
//  Created by  on 11/30/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    var assignments = ["Chemistry HW", "Spanish Quiz", "Build a shelf", "Write an argument for History", "Code Challenge in CS"]

    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        
    }

    @IBAction func addButtonTapped(_ sender: UIBarButtonItem)
    {
        
        
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
        cell.textLabel?.text = currentAssignment
        cell.textLabel?.font = UIFont(name: "Avenir", size: 30)
        cell.backgroundColor = UIColor.lightGray
        cell.textLabel?.textColor = UIColor.black
        cell.detailTextLabel?.text = "is the best linebacker I know..."
        cell.detailTextLabel?.textColor = UIColor.green
        
        return cell
    }
}


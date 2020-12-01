//
//  ViewController.swift
//  AssignmentNotebook2020
//
//  Created by  on 11/30/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    

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
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        // change the cells properties...
        cell.textLabel?.text = "Collin"
        cell.backgroundColor = UIColor.purple
        cell.textLabel?.textColor = UIColor.white
        cell.detailTextLabel?.text = "is the best linebacker I know..."
        cell.detailTextLabel?.textColor = UIColor.green
        
        return cell
    }
}


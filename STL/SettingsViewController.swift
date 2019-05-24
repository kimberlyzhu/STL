//
//  SettingsViewController.swift
//  STL
//
//  Created by Kimberly Zhu on 5/5/19.
//  Copyright © 2019 UCB-Team-Tech. All rights reserved.
//

import Foundation
import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // add the table view to self.view
        self.view.addSubview(tableView)
        
        // table constraints
        
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20.0).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 120.0).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20.0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200.0).isActive = true
        
        //for border around the table
        //tableView.layer.borderWidth = 3
        //tableView.layer.borderColor = UIColor.black.cgColor
        
        // set delegate and datasource
        tableView.delegate = self
        tableView.dataSource = self
        
        // register a defalut cell
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    let tableView : UITableView = {
        let t = UITableView()
        t.translatesAutoresizingMaskIntoConstraints = false
        return t
    }()
    
    // Note: because this is NOT a subclassed UITableViewController,
    // DataSource and Delegate functions are NOT overridden
    
    // MARK: - Table view data source
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.numberOfLines = 0;
        cell.textLabel?.text = "Project: \(indexPath.row + 1) \n Location: \(global.projectLocations[indexPath.row]) \n Number of Lights: \(global.numOfLights[indexPath.row])"
        cell.textLabel?.font = UIFont(name:"Avenir Next Condensed", size:20)
        return cell
    }
    
    // MARK: - Table view delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // etc
    }


}

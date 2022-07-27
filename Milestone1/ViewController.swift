//
//  ViewController.swift
//  Milestone1
//
//  Created by Eldos Turapbaev on 27.07.2022.
//

import UIKit

class ViewController: UITableViewController {
    
    var countries = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Country", for: indexPath)
        
        let flagImage = UIImage(named: countries[indexPath.row])
        
        cell.imageView?.image = flagImage
        cell.textLabel?.text = countries[indexPath.row].uppercased()
        
        return cell
    }


}


//
//  TableViewController.swift
//  hopkins_antibiotics
//
//  Created by Joel alexis on 5/3/19.
//  Copyright © 2019 Joel alexis. All rights reserved.
//

import UIKit

class Layer3ViewController: UITableViewController {

    var data = ""
    
    let array = [
        "Amikacin",
        "Gentamicin",
        "Kanamycin",
        "Netilmicin",
        "Streptomycin",
        "Tobramycin"
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = data
        
    }
    
    //    MARK: data source methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Layer3Cell", for: indexPath)
        
        cell.textLabel?.text = array[indexPath.row]
        
        return cell
        
    }




}

//
//  ViewController.swift
//  hopkins_antibiotics
//
//  Created by Joel alexis on 4/23/19.
//  Copyright © 2019 Joel alexis. All rights reserved.
//

import UIKit

class AntibioticsViewController: UITableViewController {
    var pathNumber = 0
    let antibioticsArray = [
    "Antibacterial",
    "Antifungal",
    "Antimycobacterial",
    "Antiparasitic",
    "Antiviral",
    "Biological",
    "Other",
    "Para-aminosalicylic acid [PAS]"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.backgroundView = UIImageView(image: UIImage(named: "antibg"))
        tableView.tableFooterView = UIView()
    }
    
    //    MARK: data source methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return antibioticsArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AntibioticsCell", for: indexPath)
        
        cell.textLabel?.text = antibioticsArray[indexPath.row]
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        pathNumber = indexPath.row
        performSegue(withIdentifier: "layer2", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "layer2" {
            let subCatVC = segue.destination as! SubCatViewController
            subCatVC.data = antibioticsArray[pathNumber]
        }
    }

}


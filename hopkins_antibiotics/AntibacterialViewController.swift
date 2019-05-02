//
//  AntibacterialViewController.swift
//  hopkins_antibiotics
//
//  Created by Joel alexis on 5/1/19.
//  Copyright © 2019 Joel alexis. All rights reserved.
//

import UIKit

class AntibacterialViewController: UITableViewController {
    
    let antibacterialArray = [
        "Aminoglycosides",
        "Amino Pcn",
        "Antimycobacterial Agents",
        "Antipseudomonad Pcn",
        "Carbapenem",
        "Cephalosporins",
        "Clindamycin",
        "Daptomycin Locked",
        "Eravacycline Locked",
        "Fidaxomicin Locked",
        "Fluoroquinolones",
        "Gemifloxacin Locked",
        "Glycopeptide",
        "Lincomycin",
        "Macrolide",
        "Methenamine Locked",
        "Misc",
        "Monobactam",
        "Mupirocin Locked",
        "Natural Pcns",
        "Neomycin Locked",
        "Nitrofurantoin Locked",
        "Nitrofurazone Locked",
        "Novobiocin Locked",
        "Oxazolidinones",
        "Pcn others",
        "Penicillinase-Resistant Pcn",
        "Plazomicin Locked",
        "Retapamulin Locked",
        "Rifamycin Locked",
        "Rifaximin Locked",
        "Streptogramin",
        "Sulfa",
        "Tedizolid Locked",
        "Telithromycin Locked",
        "Tetracycline"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    //    MARK: data source methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return antibacterialArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AntibacterialCell", for: indexPath)
        
        cell.textLabel?.text = antibacterialArray[indexPath.row]
        
        return cell
        
    }
    
}

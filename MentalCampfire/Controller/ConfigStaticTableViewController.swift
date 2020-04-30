//
//  ConfigStaticTableViewController.swift
//  MentalCampfire
//
//  Created by Patricia Sampaio on 29/04/20.
//  Copyright © 2020 Rodrigo Silva Ribeiro. All rights reserved.
//

import UIKit

class ConfigStaticTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
    }
    
    @IBAction func changePermission(_ sender: UISwitch) {
        
        let message = sender.isOn ?
        "Notificações ativas" : "Notificações desativadas"
        print(message)
    }
    
    @IBAction func changeSound(_ sender: UISwitch) {
    }
    
    @IBAction func changeVolume(_ sender: UISlider) {
        
        print("Volume está em : \(sender.value * 100)%")
    }
    
    
}

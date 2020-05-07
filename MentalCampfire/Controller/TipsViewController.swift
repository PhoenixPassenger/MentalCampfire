//
//  TipsViewController.swift
//  MentalCampfire
//
//  Created by Rodrigo Silva Ribeiro on 28/04/20.
//  Copyright © 2020 Rodrigo Silva Ribeiro. All rights reserved.
//

import UIKit

class TipsViewController: UIViewController {
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        table.tableFooterView = UIView()

    }
    private func configureCell(){
        
    }
    
   
}
extension TipsViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.detailTextLabel?.text = Tip.createTip(indexPath.row).Text
        cell.textLabel?.text = Tip.createTip(indexPath.row).Title
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 150
       }
       
   }
extension TipsViewController : UITableViewDelegate {
   
}

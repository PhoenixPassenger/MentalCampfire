//
//  ConfigStaticTableViewController.swift
//  MentalCampfire
//
//  Created by Patricia Sampaio on 01/05/20.
//  Copyright © 2020 Rodrigo Silva Ribeiro. All rights reserved.
//

import UIKit


class ConfigStaticTableViewController: UITableViewController {
    
    
    
    @IBOutlet weak var timeSelectionTfd: UITextField!
    
    var datePicker = UIDatePicker()
    let dateFormatter = DateFormatter()
    let locale = NSLocale.current
    let toolBar = UIToolbar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        createDatePicker()
    }
    
    @IBAction func changePermission(_ sender: UISwitch) {
        
        let message = sender.isOn ?
        "Notificações ativas" : "Notificações desativadas"
        print(message)
    }
    
    @IBAction func changeSound(_ sender: UISwitch) {
        let message = sender.isOn ?
            "Notificações ativas" : "Notificações desativadas"
        print(message)
    }
    
    @IBAction func changeVolume(_ sender: UISlider) {
        
        print("Volume está em : \(sender.value * 100)%")
    }
    
    @IBAction func changeTimeSelectionTfd(_ sender: UISwitch) {
        let message = sender.isOn ?
            "Notificações ativas" : "Notificações desativadas"
        print(message)
    }
    
    func createDatePicker(){
        timeSelectionTfd.textAlignment = .left
        timeSelectionTfd.translatesAutoresizingMaskIntoConstraints = false
        timeSelectionTfd.placeholder = "Click aqui para adicionar"
        
        // DatePicker
        self.datePicker = UIDatePicker(frame:CGRect(x: 0, y: UIScreen.main.bounds.height - 200.0, width: UIScreen.main.bounds.width, height: 200))
        self.datePicker.backgroundColor = UIColor.white
        self.datePicker.datePickerMode = UIDatePicker.Mode.time
        datePicker.center = view.center
       
        // ToolBar
        let toolBar = UIToolbar()
        toolBar.frame = CGRect(x: 0, y: UIScreen.main.bounds.height - 240.0, width: UIScreen.main.bounds.width, height: 44.0)
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
        toolBar.sizeToFit()
        
        //Button
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneClick))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: nil, action: #selector(cancelClick))
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: true)
        
        timeSelectionTfd.inputAccessoryView = toolBar
        timeSelectionTfd.inputView = datePicker
        
    }
    
    @objc func doneClick(){
        let formatter1 = DateFormatter()
        formatter1.dateStyle = .none
        formatter1.timeStyle = .short
        self.view.endEditing(true)
  
        timeSelectionTfd.text = formatter1.string(from: datePicker.date)
  }
    
     @objc func cancelClick() {
        self.view.endEditing(true)

     }
    
}




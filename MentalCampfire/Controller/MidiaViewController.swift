//
//  MidiaViewController.swift
//  MentalCampfire
//
//  Created by Lidiane Gomes Barbosa on 04/05/20.
//  Copyright © 2020 Rodrigo Silva Ribeiro. All rights reserved.
//

import UIKit

class MidiaViewController:UIViewController{
    
    @IBOutlet weak var tableView: UITableView!

  
    
    
    let conteudo = MidiaModel().midia
    let label = MidiaModel().label
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    tableView.separatorStyle = .none
    }
}

extension MidiaViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return conteudo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "MidiaTableViewCell" , for: indexPath) as! MidiaTableViewCell
        cell.delegate = self
        cell.row = indexPath.row
        cell.label.text = label[indexPath.row]
        cell.conteudo = conteudo[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 190
    }
   
}

extension MidiaViewController: MidiaTableViewCellDelegate {
    func didSelectItem(at indexPath: IndexPath, row: Int,imageName:String,title name:String , url:String) {
        if (label[row] == "Vídeos"){
            let video = Video( titulo: name, url: url)
            print(video)
            self.performSegue(withIdentifier: "videoSegue", sender: video)
        }else{
            let audio = Audio( titlulo: name, imageName: imageName)
            self.performSegue(withIdentifier: "audioSegue", sender: audio)
            print(audio)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "videoSegue":
            let destiny = segue.destination as? VideoViewController
            destiny?.video = (sender as! Video)

        case "audioSegue":
            let destiny = segue.destination as? AudioViewController
            destiny?.audio = (sender as! Audio)
        default:
            print("Segue nao especificada" )
        }
    }
}

//
//  MidiaTableViewCell.swift
//  MentalCampfire
//
//  Created by Lidiane Gomes Barbosa on 04/05/20.
//  Copyright © 2020 Rodrigo Silva Ribeiro. All rights reserved.
//

import UIKit

protocol MidiaTableViewCellDelegate: class {
    func didSelectItem(at indexPath: IndexPath, row: Int,imageName:String,title:String, url:String)
}

class MidiaTableViewCell: UITableViewCell {
    
    var conteudo: [(img: String, title:String, url:String)] = []
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    weak var delegate: MidiaTableViewCellDelegate?
    
    var row: Int!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
    
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}

extension MidiaTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return conteudo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MidiaCollectionViewCell
   
    
        let currentItem = conteudo[indexPath.row]
        let myImage = UIImage(named: currentItem.img)
        cell.img.image = myImage
        cell.label.text = currentItem.title
        
        cell.img.layer.cornerRadius = 10
        
        return cell
    }
   
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let currentItem = conteudo[indexPath.row]
        delegate?.didSelectItem(at: indexPath, row: row, imageName: currentItem.img, title: currentItem.title, url:currentItem.url)
      //print("item at \(indexPath.section)/\(indexPath.item) tapped")
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 117, height: 111)
    }
    
    
}

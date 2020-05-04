//
//  FogueiraController.swift
//  MentalCampfire
//
//  Created by Patricia Sampaio on 03/05/20.
//  Copyright © 2020 Rodrigo Silva Ribeiro. All rights reserved.
//

import UIKit

class FogueiraController: UIViewController {
    
    var phraseDay = PhraseModel()
    
    @IBOutlet weak var phraseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uptadeUI ()
    }
    
    @objc func uptadeUI (){
        phraseLabel.text = phraseDay.getPhrase()
    }
}

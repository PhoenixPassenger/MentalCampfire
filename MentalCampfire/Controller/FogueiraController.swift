//
//  FogueiraController.swift
//  MentalCampfire
//
//  Created by Patricia Sampaio on 03/05/20.
//  Copyright © 2020 Rodrigo Silva Ribeiro. All rights reserved.
//

import UIKit
import AVFoundation
class FogueiraController: UIViewController {
    
    var phraseDay = FogueiraModel()
    var soundFogueira = FogueiraModel()
    
    
    @IBOutlet weak var phraseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uptadeUI ()
            soundFogueira.MyAudio().play()
    }
    
    @objc func uptadeUI (){
        phraseLabel.text = phraseDay.getPhrase()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        soundFogueira.MyAudio().pause()
    }
    
    override func viewWillAppear(_ animated: Bool) {
            soundFogueira.MyAudio().play()
    }
}
